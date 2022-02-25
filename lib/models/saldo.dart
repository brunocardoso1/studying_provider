import 'package:flutter/material.dart';


class Saldo extends ChangeNotifier {

  // Quando o valor é "final", quer literalmente dizer que é o valor final e não sera alterado
  // nesse caso, no meu metodo adiciona, eu precisei fazer uma alteração no valor
  // logo o valor não poderia ser "final", pois poderia sofrer alterações.
  double valor;

  Saldo(this.valor);

  // void porque não está retornando nada, só adicionando o valor

  void adiciona(double valor) {
    this.valor += valor;
    notifyListeners();
  }

  void subtrai(double valor){
    this.valor -= valor;
    notifyListeners();
  }

  // O override está reinscrevendo o metodo "toString"
  @override
  String toString() {
    return 'R\$ $valor';
  }
}