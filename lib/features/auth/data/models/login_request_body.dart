import 'package:json_annotation/json_annotation.dart';

part 'login_request_body.g.dart';
@JsonSerializable()
class LoginRequestBody {
  final String email;
  final String password;

  LoginRequestBody({
    required this.email,
    required this.password,
  });

  Map<String , dynamic> toJson() => _$LoginRequestBodyToJson(this);

  // theree is no need for fromJson method as this is only used for sending data to the server
}
