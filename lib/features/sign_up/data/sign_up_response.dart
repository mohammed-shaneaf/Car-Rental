import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_response.freezed.dart';
part 'sign_up_response.g.dart';

@freezed
class SignupResponse with _$SignupResponse {
  const factory SignupResponse({
    required String access,
    required String refresh,
  }) = _SignupResponse;

  factory SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseFromJson(json);
}
