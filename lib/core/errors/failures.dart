abstract class Failure {
  final String message;
  final String? code;

  Failure({required this.message, this.code});
}

class ServerFailure extends Failure {
  ServerFailure({required super.message, super.code});
}
