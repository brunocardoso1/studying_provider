
import 'package:flutter/cupertino.dart';
import 'package:studying_provider/models/transferencia.dart';

class Transferencias extends ChangeNotifier {

  final List<Transferencia> _transferencias = [];

  List<Transferencia> get transferencias => _transferencias;

  adiciona(Transferencia novaTransferencia){
    transferencias.add(novaTransferencia);
    notifyListeners();
  }
}