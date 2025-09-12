import 'package:dio/dio.dart';
import 'api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle(DioException error) {
    // Prefer server-provided payload if it’s a known JSON
    final response = error.response;
    if (response != null) {
      try {
        final data = response.data;
        if (data is Map<String, dynamic>) {
          return ApiErrorModel.fromJson({
            'message': data['message'] ?? data['detail'] ?? response.statusMessage,
            'code': response.statusCode,
            'details': data,
          });
        }
      } catch (_) {}
      return ApiErrorModel(
        message: response.statusMessage ?? 'Unknown server error',
        code: response.statusCode,
        details: (response.data is Map<String, dynamic>) ? response.data : null,
      );
    }

    // Network / timeout / cancellation
    return ApiErrorModel(
      message: error.message ?? 'Network error',
      code: error.response?.statusCode,
    );
  }
}
