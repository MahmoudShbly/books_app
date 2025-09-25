import 'package:dio/dio.dart';

abstract class Failures {
  final errorMassage;
  Failures(this.errorMassage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errorMassage);
  factory ServerFailure.fromDioException(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection time out error');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send time out error');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive time out error');
      case DioExceptionType.badCertificate:
        return ServerFailure('Connection time out error');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioError.response!.statusCode!,
          dioError.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure('Rrquest to api was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('Opps there was an error plase try again');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No Intenet Conection');
        } else {
          return ServerFailure('Unexpected error plase try again ');
        }
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['massage']);
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error try again later');
    } else if (statusCode == 500) {
      return ServerFailure('Your request not found try again');
    } else {
      return ServerFailure('Opps there was an error plase try again');
    }
  }
}
