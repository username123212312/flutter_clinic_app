import 'package:freezed_annotation/freezed_annotation.dart';

part 'complete_user_info_request.freezed.dart';
part 'complete_user_info_request.g.dart';

@freezed
sealed class CompleteUserInfoRequest with _$CompleteUserInfoRequest {
  factory CompleteUserInfoRequest({
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    DateTime? birthDate,
    @JsonKey(name: 'blood_type') String? bloodType,
    String? gender,
    String? address,
    String? email,
    String? phone,
  }) = _CompleteUserInfoRequest;

  factory CompleteUserInfoRequest.fromJson(Map<String, dynamic> json) =>
      _$CompleteUserInfoRequestFromJson(json);
}
