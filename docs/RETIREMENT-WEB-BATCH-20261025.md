# Retired web consumer deletion — 25 October 2026

Removed the `apps/web` mirrored legacy consumer (crypto buy/sell/swap/deposits/withdrawals, non-data bills, gift cards, Telegram sales, premium/creator tools and copied third-party scripts/API snapshots). Its homepage identified the source as a mirror of nasfampay.com and advertised the retired crypto/bills product. No workspace package, active build, or retained mobile import depended on it. Removed its stale optional environment-registry entry and build-cache path.

The retained Gateway/mobile account deletion, auth/recovery, privacy, exports and support functions are not part of this mirrored site and remain. No database/applied migration or financial record was deleted. Git preserves source history; `Baatiku/Masanawa-App` is untouched. No replacement website, deployment, APK or provider action is claimed.

Validation: architecture/environment contracts and shell syntax, then full exact-head CI before automatic merge.
