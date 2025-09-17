// import 'package:car_rental/core/networking/api_constants.dart';
// import 'package:car_rental/features/auth/data/models/login_request_body.dart';
// import 'package:car_rental/features/auth/data/models/login_response.dart';
// import 'package:dio/dio.dart';
// import 'package:retrofit/error_logger.dart';
// import 'package:retrofit/http.dart';

// @RestApi(baseUrl: ApiConstants.baseUrl)
// abstract class ApiService {
//   factory ApiService(Dio dio, String? baseUrl, ParseErrorLogger errorLogger) =
//       _ApiService;

//   @POST(ApiConstants.login)
//   Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

//   @POST(ApiConstants.register)
//   Future<void> register(@Body() Map<String, dynamic> registerRequestBody);
// }
