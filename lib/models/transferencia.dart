import 'package:intl/intl.dart';

class Transferencia {
  final double valor;
  final int numeroConta;
  final String time;

  Transferencia(
    this.valor,
    this.numeroConta,
    this.time,
  );

  String toStringTime() {
    return '\n$time';
  }

  String toStringValor() {
    return 'R\$ $valor';
  }

  String toStringConta() {
    return 'Conta: $numeroConta';
  }
}
