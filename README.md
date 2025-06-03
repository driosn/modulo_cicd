# resident-mobile
new mobile app for resident-portal

## Tech Stack
1. Flutter
	- https://docs.flutter.dev/

## Get Started
1. Install flutter - https://docs.flutter.dev/get-started/install
1. flutter doctor
1. install packages - run `flutter clean && flutter pub get`

### Running

#### Troubleshoot
1. Clean and start fresh - `flutter clean && flutter pub get`

#### Flavors
1. Demo
	Show the different widgets and spacing that we have
1. Dev
	Our development environment
1. QA
1. Production

#### iOS
!!Open the xcworkspace instead of xcproj

##### Build ipa
NOTE: The -t flag is important currently as we use specific entry points for our application depending on the environment (dev/qa/prod).
We could try to use one entry point but we decided it was safer to use multiple entrypoints when building from xCode because the flavor may not be set correctly.
This may also have caused issues during the release process due to incorrect environments.

Run all commands from the root of the repository.
1. Run `flutter clean && flutter pub get` to make sure you have the latest packages
1. Then run one of
1. demo `flutter build ipa -t lib/main_demo.dart --flavor demo`
1. dev `flutter build ipa -t lib/main_dev.dart --flavor dev`
1. QA `flutter build ipa -t lib/main_qa.dart --flavor qa`
1. PROD `flutter build ipa -t lib/main_prod.dart --flavor prod`

##### Run ipa
NOTE: The -t flag seems to be ignored in the below. It may depend on the schemes we have set in xCode and how they map to the different entry points This is an outstanding question we have.
Maybe we could utilize one entry point.. Safer to use multiple entrypoints when building from xCode though because the flavor may not be set correctly.
This may also have caused issues during the release process due to incorrect environments.

Run all commands from the root of the repository.
1. demo `flutter run -t lib/main_demo.dart --flavor demo`
1. dev `flutter run -t lib/main_dev.dart --flavor dev`
1. QA `flutter run -t lib/main_qa.dart --flavor qa`
1. PROD `flutter run -t lib/main_prod.dart --flavor prod`


## Deploy & Release
### iOS
1. Run `flutter clean && flutter pub get`
1. QA Run `flutter build ipa -t lib/main_qa.dart --flavor qa`
1. Prod Run `flutter build ipa -t lib/main_prod.dart --flavor prod`

TODO use the xcrun tool or set destination to upload in ExportOptions.plist for GitHub actions.
NOTE a destination of upload will not store the ipa file locally which we need to upload to BrowserStack so we can stick with export for now.
Run "xcrun altool --upload-app --type ios -f build/ios/ipa/*.ipa --apiKey your_api_key --apiIssuer your_issuer_id".


## Steps to get p12 private cert for iOS signing

1. Generate certificate signing request on Mac
1. Use it to create a `iOS Distribution (App Store Connect and Ad Hoc)` certificate here
    1. https://developer.apple.com/account/resources/certificates/list
    2. Download the cert
1. Use the cert to create an `App Store Connect` provisioning profile here
    1. https://developer.apple.com/account/resources/profiles/list
    2. Download it
1. Drag and drop the cer into the login keychain
1. In the login keychain in keychain access, expand the cert you created and then export the private key
    1. Enter a password
	1. Get the privateKey.p12 file.

## Generate the ExportOptions.plist file using the xCode archive tool.
We need the ExportOptions.plist in order to select the correct signing certs etc.
1. Generate an archive with the QA/Prod schema
1. The xCode archive explorer will open after it is complete
1. Click Distribute
1. Select custom
1. Select App Store Connect
1. Select export
1. etc...
1. Export it and save folder
1. open folder and see the ExportOptions.plist.
1. convert to base64 via `base64 -w 0 keystore.jks > keystore.jks.base64`

### Android

#### Building Appbundle
**Note:**
Right now for Android we need a way to sign with a cert in GH Actions and also provide a way to sign without a cert locally.
For this we can use the release and debug buildTypes to specify the signing settings. Unfortunately flutter doesn't have a way to
specify more than release/debug/profile for build types
See https://developer.android.com/build/build-variants. Android studio can handle this just fine but flutter cannot.

**Note:**
- Run build/run commands using `<command> --debug` for debug configuration
- Run build/run commands using `<command> --release` for the release configuration
	- With flutter `--release` is the default if it is not specified.

**Build Commands:**
1. Build locally with NO cert needed - Android studio will automatically generate the required certificate.
	1. demo `flutter run -t lib/main_demo.dart --flavor demo --debug`
	1. dev `flutter run -t lib/main_dev.dart --flavor dev --debug`
	1. QA `flutter run -t lib/main_qa.dart --flavor qa --debug`
	1. PROD `flutter run -t lib/main_prod.dart --flavor prod --debug`
1. Build in GitHub Actions
	1. `flutter build appbundle -t lib/main_qa.dart --flavor qa`
		- Without specifying --debug a specific certificate is required.
	1. Override the build name and number with `--build-name 0.0.4 --build-number 109`
 		- i.e. `flutter build appbundle -t lib/main_qa.dart --flavor qa --build-name 0.0.4 --build-number 109`

### Issues

There is an issue building the gradle build if this repo lives on a different drive than the main drive where the sdk is installed
- https://github.com/flutter/flutter/issues/105395#issuecomment-2205494224
- https://stackoverflow.com/a/73488491
```
Multiple build operations failed.
    Could not create task ':flutter_plugin_android_lifecycle:generateDebugUnitTestConfig'.
    Could not create task ':local_auth_android:generateDebugUnitTestConfig'.
    Could not create task ':path_provider_android:generateDebugUnitTestConfig'.
    Could not create task ':shared_preferences_android:generateDebugUnitTestConfig'.
    Could not create task ':url_launcher_android:generateDebugUnitTestConfig'.
Could not create task ':flutter_plugin_android_lifecycle:generateDebugUnitTestConfig'.
this and base files have different roots:
	D:\Repos\mobile\resident-mobile\build\flutter_plugin_android_lifecycle and
	C:\Users\username\AppData\Local\Pub\Cache\hosted\pub.dev\flutter_plugin_android_lifecycle-2.0.22\android.
```

## TODO
1. add flutter-version: "3.24.0" and java version as build variables in GitHub actions..
1. We can override the version and build number with --build-name and --build-number respectively.
1. Learn how to improve build efficiency with caching. https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/caching-dependencies-to-speed-up-workflows

## Generated Files
### Freezed
Run `dart run build_runner build` to generate files from source.
Run `dart run build_runner watch` to build as changes are made.
Run `dart run build_runner build --delete-conflicting-outputs` to build and delete conflicting outputs.

### Translations
Run `flutter gen-l10n`
