import 'package:resident_app/features/user/data/models/user_model.dart';

abstract class UserRemoteDataSource {
  Future<UserModel> get();
}
