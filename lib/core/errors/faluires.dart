import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServerFilauire extends Failure {
  ServerFilauire(super.errorMessage);

  factory ServerFilauire.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ServerFilauire('connection timeout with apiServer');
      case DioErrorType.sendTimeout:
        return ServerFilauire('Send timeout with apiServer');
      case DioErrorType.receiveTimeout:
        return ServerFilauire('Reccive timeout with apiServer');

      case DioErrorType.badCertificate:
        return ServerFilauire('bad Certificate with apiServer');

      case DioErrorType.badResponse:
        return ServerFilauire.fromResponse(
            dioError.response!.statusCode!, dioError.response);

      case DioErrorType.cancel:
        return ServerFilauire('Request to api server is canceled');

      case DioErrorType.connectionError:
        return ServerFilauire('connection Error with apiServer');

      case DioErrorType.unknown:
        if (dioError.message!.contains('SocketException')) {
          ServerFilauire('No internet connection');
        }
        break;

      default:
        return ServerFilauire(
            'Opps There was an error, please try agein later');
    }
    return ServerFilauire('Unexpected Error');
  }

  factory ServerFilauire.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFilauire(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFilauire('Your Request Not Found, please try again later');
    } else if (statusCode == 500) {
      return ServerFilauire('Internal Server error, Please try agein later');
    } else {
      return ServerFilauire('Opps, There was an error');
    }
  }
}
