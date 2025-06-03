import 'package:resident_app/environment.dart';
import 'package:resident_app/firebase_options_dev.dart';
import 'package:resident_app/main_common.dart';

///
/// To use this demo view, please run the app with [--flavor demo]
///
void main() => mainCommon(
      env: Environment.dev(),
      options: DefaultFirebaseOptionsDev.currentPlatform,
    );
