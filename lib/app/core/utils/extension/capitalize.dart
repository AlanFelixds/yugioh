extension Capitalize on String {
  String capitalize() {
    final primeiraLetra = substring(0, 1).toUpperCase();
    final complemento = substring(1).toLowerCase();
    return "$primeiraLetra$complemento";
  }
}

extension on int {
  int multiplicar() => this * 2;
}
