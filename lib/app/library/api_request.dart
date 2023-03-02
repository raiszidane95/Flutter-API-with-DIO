// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

class ApiRequest {
  final String? url;
  final Map<String, dynamic>? data;
  ApiRequest({
    this.url,
    this.data,
  });

  Dio _dio() {
    return Dio(BaseOptions(headers: {
      'Authorization': 'B .......',
    }));
  }

  void get({
    required Function() beforeSend,
    required Function(dynamic data) onSuccess,
    required Function(dynamic error) onError,
  }) {
    _dio().get(url!, queryParameters: data).then((res) {
      onSuccess(res.data);
    }).catchError((error) {
      onError(error);
    });
  }
}
