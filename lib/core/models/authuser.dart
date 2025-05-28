import 'package:our_flutter_clinic_app/core/models/usermodel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authuser.freezed.dart';
part 'authuser.g.dart';

@freezed
sealed class AuthUser with _$AuthUser {
  factory AuthUser({UserModel? user, String? token}) = _AuthUser;

  factory AuthUser.fromJson(Map<String, dynamic> json) =>
      _$AuthUserFromJson(json);
}
