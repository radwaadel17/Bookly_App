// ignore: file_names
import 'package:dio/dio.dart';

 class ApiService {
  final Dio dio;
  final String _baseUrl = "https://www.googleapis.com/books/v1/volumes?";
  ApiService(this.dio);
  Future<Map<String , dynamic>> getData({required String endPoint}) async {
    Response response = await dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}
