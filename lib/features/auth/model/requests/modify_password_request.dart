import 'package:freezed_annotation/freezed_annotation.dart';

part 'modify_password_request.freezed.dart';
part 'modify_password_request.g.dart';

@freezed
sealed class ModifyPasswordRequest with _$ModifyPasswordRequest {
  factory ModifyPasswordRequest({
    required String oldPassword,
    required String newPassword,
  }) = _ModifyPasswordRequest;

  factory ModifyPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ModifyPasswordRequestFromJson(json);
}
