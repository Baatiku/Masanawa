plugins {
    id("com.android.application")
}

android {
    namespace = "ng.unigeria.unigeria"
    compileSdk = 36
    buildFeatures { resValues = true }

    defaultConfig {
        // The existing Flutter package ID is retained for a future in-place migration.
        // Do not publish over the Flutter application until signing and device qualification.
        applicationId = "ng.unigeria.unigeria"
        minSdk = 24
        targetSdk = 36
        versionCode = System.getenv("SHELL_RELEASE_VERSION_CODE")?.toIntOrNull()?.takeIf { it > 0 } ?: 9
        versionName = "1.2.0-shell"
        testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"
        // Firebase Android app identifiers come from the same managed values used
        // by the existing Flutter app. Never commit provider credentials.
        mapOf(
            "masanawa_firebase_api_key" to "FIREBASE_API_KEY",
            "masanawa_firebase_app_id" to "FIREBASE_APP_ID",
            "masanawa_firebase_sender_id" to "FIREBASE_MESSAGING_SENDER_ID",
            "masanawa_firebase_project_id" to "FIREBASE_PROJECT_ID",
        ).forEach { (resource, environment) ->
            resValue("string", resource, System.getenv(environment)?.trim().orEmpty())
        }
    }

    val keyFile = System.getenv("SHELL_RELEASE_KEYSTORE_PATH")?.let(::file)?.takeIf { it.isFile }
    val ownerKeyAlias = System.getenv("SHELL_RELEASE_KEY_ALIAS")?.takeIf { it.isNotBlank() }
    val ownerStorePassword = System.getenv("SHELL_RELEASE_STORE_PASSWORD")?.takeIf { it.isNotBlank() }
    val ownerKeyPassword = System.getenv("SHELL_RELEASE_KEY_PASSWORD")?.takeIf { it.isNotBlank() }
    if (keyFile != null && ownerKeyAlias != null && ownerStorePassword != null && ownerKeyPassword != null) {
        signingConfigs.create("ownerRelease") {
            storeFile = keyFile
            storePassword = ownerStorePassword
            keyAlias = ownerKeyAlias
            keyPassword = ownerKeyPassword
        }
    }

    buildTypes {
        debug {
            // Keep testing reversible: the preview installs alongside the
            // Flutter app instead of replacing it or wiping its local data.
            applicationIdSuffix = ".shelltest"
            versionNameSuffix = "-debug"
        }
        release {
            isMinifyEnabled = false
            // Release signing is intentionally impossible without explicit
            // owner-provided signing material; see the gated bundle workflow.
            if (signingConfigs.names.contains("ownerRelease")) {
                signingConfig = signingConfigs.getByName("ownerRelease")
            }
        }
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    // Reuse only the approved binary Masanawa icon artwork, not old Flutter
    // themes/XML that have different min-SDK assumptions and lint failures.
    val brandIconSource = file("../../mobile/android/app/src/main/res")
    val generatedBrandIcons = layout.buildDirectory.dir("generated/masanawa-brand-icons")
    val copyBrandIcons = tasks.register<Copy>("copyMasanawaBrandIcons") {
        from(brandIconSource) { include("mipmap-*/ic_launcher.png") }
        into(generatedBrandIcons)
    }
    // AGP 9 rejects Provider values in SourceSet.srcDir; preBuild supplies the
    // generation dependency and this resolves to a concrete directory path.
    sourceSets.getByName("main").res.srcDir(generatedBrandIcons.get().asFile)
    tasks.matching { it.name == "preBuild" }.configureEach { dependsOn(copyBrandIcons) }
}

kotlin {
    compilerOptions {
        jvmTarget = org.jetbrains.kotlin.gradle.dsl.JvmTarget.JVM_17
    }
}

dependencies {
    implementation("androidx.activity:activity-ktx:1.13.0")
    implementation("androidx.fragment:fragment:1.9.1")
    implementation("androidx.webkit:webkit:1.18.0")
    implementation("androidx.core:core-ktx:1.17.0")
    implementation("androidx.core:core-splashscreen:1.0.1")
    implementation("androidx.core:core-telecom:1.1.0")
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-android:1.10.2")
    implementation("com.google.firebase:firebase-messaging:26.0.2")
    testImplementation("junit:junit:4.13.2")
}
