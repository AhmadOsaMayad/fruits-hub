class CustomExceptions implements Exception {
  final String message;
  final String? code;
  CustomExceptions({required this.message, this.code});

  @override
  String toString() => message;
}
