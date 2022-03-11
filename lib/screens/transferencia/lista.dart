
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studying_provider/models/transferencia.dart';
import 'package:studying_provider/models/transferencias.dart';

import 'formulario.dart';

const _tituloAppBar = 'Transferências';


class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: Consumer<Transferencias>(
          builder: (context, transferencias, child) {
            return ListView.builder(
              itemCount: transferencias.transferencias.length,
              itemBuilder: (context, indice) {
                final transferencia = transferencias.transferencias[indice];
                return ItemTransferencia(transferencia);
              },
            );
          }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioTransferencia();
          }));
        },
      ),
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
          child: ListTile(
            leading: Icon(Icons.monetization_on, size: 32, color: Colors.green[300],),
            title: Text(_transferencia.toStringConta(), style: TextStyle(
              fontSize: 17,
            ),),
            subtitle: RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: ('Valor: '), style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  )),
                  TextSpan(text: _transferencia.toStringValor(), style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),),
                  TextSpan(text: (_transferencia.toStringTime()), style: TextStyle(
                    fontSize: 13,


                    color: Colors.black
                  ))
                ]
              ),
            )
          )),
    );
  }
}
