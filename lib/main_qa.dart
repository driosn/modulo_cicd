import 'package:resident_app/environment.dart';
import 'package:resident_app/firebase_options_qa.dart';
import 'package:resident_app/main_common.dart';

void main() => mainCommon(
      env: Environment.qa(),
      options: DefaultFirebaseOptionsQA.currentPlatform,
    );
