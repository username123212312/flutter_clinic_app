import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/usermodel.dart';

part 'edit_profile_request.freezed.dart';
part 'edit_profile_request.g.dart';

@freezed
sealed class EditProfileRequest with _$EditProfileRequest {
  factory EditProfileRequest({UserModel? user}) = _EditProfileRequest;

  factory EditProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$EditProfileRequestFromJson(json);
}
