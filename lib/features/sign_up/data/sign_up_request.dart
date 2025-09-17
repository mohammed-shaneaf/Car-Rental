import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_request.freezed.dart';
part 'sign_up_request.g.dart';

@freezed
class SignUpRequestBody with _$SignUpRequestBody {
  const factory SignUpRequestBody({
    required String username,
    required String email,
    required String password,
    required String country,
  }) = _SignUpRequestBody;

  factory SignUpRequestBody.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestBodyFromJson(json);
}
