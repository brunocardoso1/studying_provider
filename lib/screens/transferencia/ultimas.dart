import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studying_provider/models/transferencias.dart';

import 'lista.dart';

final _titulo = 'Ultimas transferencias';

class UltimasTransferencias extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(_titulo, style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
        Consumer<Transferencias>(
          builder: (context, transferencias, child) {

            final _ultimasTransferencias = transferencias.transferencias.reversed.toList();
            final _quantidade = transferencias.transferencias.length;
            int tamanho = 3;

            if(_quantidade == 0){
              return SemTransferenciaCadastrada();
            }

            if (_quantidade < 3) {
              tamanho = _quantidade;
            }

            return ListView.builder(
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 20),
              itemCount: tamanho,
              shrinkWrap: true,
              itemBuilder: (context, indice) {
                return ItemTransferencia(_ultimasTransferencias[indice]);
              },
            );
          },
        ),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.orange[300]),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ListaTransferencias();
              }));
            },
            child: Text(
              "Ver todas Transferencias",
              style: TextStyle(
                color: Colors.black,
              ),
            )),
      ],
    );
  }
}


class SemTransferenciaCadastrada extends StatelessWidget {

  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(40),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text('Você ainda não cadastrou nenhuma transferencia!', textAlign: TextAlign.center,),
      ),
    );
  }
}
