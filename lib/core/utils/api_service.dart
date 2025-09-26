import 'package:books_app/core/utils/constants.dart';
import 'package:dio/dio.dart';

class ApiService {

final _baseUrl ='https://www.googleapis.com/books/v1';
final Dio _dio;
ApiService(this._dio);
Future <Map <String,dynamic>> get  ({required endPoint})async{
  var response= await _dio.get('$_baseUrl$endPoint&key=$apiKey');
  return response.data;
}


}