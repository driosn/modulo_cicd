import 'package:resident_app/environment.dart';
import 'package:resident_app/firebase_options_prod.dart';
import 'package:resident_app/main_common.dart';

void main() => mainCommon(
      env: Environment.prod(),
      options: DefaultFirebaseOptions.currentPlatform,
    );
