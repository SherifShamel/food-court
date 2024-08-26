import 'failure.dart';

/// General remote failures
class ServerFailure extends Failure {
  String? error, errorCode;
  String? message;

  ServerFailure({
    required super.statusCode,
    super.messageAr,
    super.messageEn,
    this.error,
    this.errorCode,
    this.message,
  });

  factory ServerFailure.fromMap(Map<String, dynamic> json) {
    return ServerFailure(
      statusCode: json['statusCode'] ?? '',
      error: json['error'],
      messageAr: json['messageAr'],
      messageEn: json['messageEn'],
      errorCode: json['errorCode'] ?? '',
    );
  }
}