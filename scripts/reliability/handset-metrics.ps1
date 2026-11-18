# Read-only, privacy-minimized handset resource and startup sampling.
# Run from a PowerShell terminal with Android platform-tools and one authorized phone.
param(
  [ValidateRange(1, 30)][int]$Runs = 5,
  [string]$Package = "ng.unigeria.unigeria",
  [string]$ApkPath = "",
  [string]$Output = "masanawa-handset-metrics.json"
)
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest
if (-not (Get-Command adb -ErrorAction SilentlyContinue)) {
  throw "adb is missing. Install platform-tools."
}
$devices = @((& adb devices) | Select-String "\sdevice$" | ForEach-Object { $_.Line })
if ($LASTEXITCODE -ne 0 -or $devices.Count -ne 1) {
  throw "Connect exactly one authorized handset. Do not collect device serials."
}
$present = (& adb shell pm path $Package | Out-String).Trim()
if ($LASTEXITCODE -ne 0 -or -not $present.StartsWith("package:")) {
  throw "The specified package is not installed on the handset."
}
$identity = (& adb shell dumpsys package $Package | Out-String)
$version = [regex]::Match($identity, "versionName=([^\s]+)")
$versionCode = [regex]::Match($identity, "versionCode=(\d+)")
$measurements = @()
foreach ($mode in @("cold", "returning")) {
  for ($n = 1; $n -le $Runs; $n++) {
    if ($mode -eq "cold") {
      & adb shell am force-stop $Package | Out-Null
    } else {
      & adb shell input keyevent KEYCODE_HOME | Out-Null
    }
    $launch = (& adb shell am start -W -n "$Package/.MainActivity" | Out-String)
    if ($LASTEXITCODE -ne 0) { throw "Android launch failed for mode $mode" }
    $duration = [regex]::Match($launch, "(?m)^\s*TotalTime:\s*(\d+)")
    if (-not $duration.Success) { throw "Android TotalTime unavailable; do not invent timings." }
    Start-Sleep -Seconds 2
    $memory = (& adb shell dumpsys meminfo $Package | Out-String)
    $pss = [regex]::Match($memory, "(?m)^\s*TOTAL PSS:\s*(\d+)")
    if (-not $pss.Success) {
      $pss = [regex]::Match($memory, "(?m)^\s*TOTAL:\s*(\d+)")
    }
    # Coarse optional signals. The per-app battery/network counters may be
    # unavailable on some vendor builds; missing numbers must stay null.
    $batteryDump = (& adb shell dumpsys battery | Out-String)
    $batteryLevel = [regex]::Match($batteryDump, "(?m)^\s*level:\s*(\d+)\s*$")
    $gfx = (& adb shell dumpsys gfxinfo $Package | Out-String)
    $janky = [regex]::Match($gfx, "(?m)^\s*Janky frames:\s*(\d+)")
    $cpuInfo = (& adb shell dumpsys cpuinfo | Out-String)
    $escapedPackage = [regex]::Escape($Package)
    $appCpu = [regex]::Match($cpuInfo, "(?m)^\s*([\d.]+)%\s+\d+/$escapedPackage(?:\s|:)")
    $netRx = $null
    $netTx = $null
    $uid = [regex]::Match($identity, "(?m)^\s*userId=(\d+)\s*$")
    if ($uid.Success) {
      $netDump = (& adb shell dumpsys netstats detail | Out-String)
      $netEntries = [regex]::Matches($netDump,
        "uid=$($uid.Groups[1].Value)\b[^\r\n]*rxBytes=(\d+)[^\r\n]*txBytes=(\d+)")
      if ($netEntries.Count -gt 0) {
        $netRx = [long]0
        $netTx = [long]0
        foreach ($e in $netEntries) {
          $netRx += [long]$e.Groups[1].Value
          $netTx += [long]$e.Groups[2].Value
        }
      }
    }
    $measurements += [pscustomobject]@{
      mode = $mode
      run = $n
      androidTotalMs = [int]$duration.Groups[1].Value
      totalPssKb = $(if ($pss.Success) { [int]$pss.Groups[1].Value } else { $null })
      batteryLevelPercent = $(if ($batteryLevel.Success) { [int]$batteryLevel.Groups[1].Value } else { $null })
      jankyFrames = $(if ($janky.Success) { [int]$janky.Groups[1].Value } else { $null })
      cpuPercentSample = $(if ($appCpu.Success) { [double]$appCpu.Groups[1].Value } else { $null })
      rxBytesDeviceUidCumulative = $netRx
      txBytesDeviceUidCumulative = $netTx
    }
  }
}
$apkEvidence = $null
if ($ApkPath) {
  $apk = Resolve-Path $ApkPath
  $apkEvidence = [pscustomobject]@{
    bytes = (Get-Item $apk).Length
    sha256 = (Get-FileHash -Algorithm SHA256 $apk).Hash.ToLowerInvariant()
  }
}
$summary = [pscustomobject]@{
  kind = "masanawa-handset-startup-and-resource-sample"
  appPackage = $Package
  appVersion = $(if ($version.Success) { $version.Groups[1].Value } else { $null })
  versionCode = $(if ($versionCode.Success) { $versionCode.Groups[1].Value } else { $null })
  releaseApk = $apkEvidence
  measurements = $measurements
  physicalDeviceQualified = $false
  notes = "Android launch, approximate PSS, sampled CPU/jank, battery level, and optional cumulative per-UID netstats. Battery percentage is not power draw; network totals are not individual media downloads. Missing signals are null and do not pass any qualification."
}
$summary | ConvertTo-Json -Depth 6 | Set-Content -Encoding utf8 $Output
Write-Host "Privacy-minimized handset timings written to $Output. No serials, logs, tokens or personal messages collected."
