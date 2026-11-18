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
    }

    buildTypes {
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

    sourceSets.getByName("main").res.srcDir("../../mobile/android/app/src/main/res")
}

kotlin {
    compilerOptions {
        jvmTarget = org.jetbrains.kotlin.gradle.dsl.JvmTarget.JVM_17
    }
}

dependencies {
    implementation("androidx.activity:activity-ktx:1.9.3")
    testImplementation("junit:junit:4.13.2")
}
