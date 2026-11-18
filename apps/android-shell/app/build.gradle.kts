plugins {
    id("com.android.application")
}

android {
    namespace = "ng.unigeria.unigeria"
    compileSdk = 36

    defaultConfig {
        // The existing Flutter package ID is retained for a future in-place migration.
        // Do not publish over the Flutter application until signing and device qualification.
        applicationId = "ng.unigeria.unigeria"
        minSdk = 24
        targetSdk = 36
        versionCode = 7
        versionName = "1.1.0-shell-preview"
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

    buildTypes {
        debug {
            // Keep testing reversible: the preview installs alongside the
            // Flutter app instead of replacing it or wiping its local data.
            applicationIdSuffix = ".shelltest"
            versionNameSuffix = "-debug"
        }
        release {
            isMinifyEnabled = false
            // There is intentionally no release-signing fallback. Signing comes
            // only after package migration is approved and keys are configured.
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
    implementation("androidx.activity:activity-ktx:1.9.3")
    implementation("androidx.webkit:webkit:1.18.0")
    implementation("androidx.core:core-ktx:1.17.0")
    implementation("com.google.firebase:firebase-messaging:26.0.2")
    testImplementation("junit:junit:4.13.2")
}
