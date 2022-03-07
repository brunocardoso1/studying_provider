import 'package:flutter/material.dart';
import 'package:studying_provider/screens/card/horizontal_card.dart';
import 'package:studying_provider/screens/dashboard/saldo.dart';
import 'package:studying_provider/screens/deposito/formulario.dart';
import 'package:studying_provider/screens/transferencia/formulario.dart';
import 'package:studying_provider/screens/transferencia/lista.dart';
import 'package:studying_provider/screens/transferencia/ultimas.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],

      body: ListView(
        children: [
          Align(alignment: Alignment.topCenter, child: SaldoCard()),
          SizedBox(height: 30),
          BuildCards(),
          SizedBox(height: 30),
          UltimasTransferencias(),

        ],
      ),
    );
  }
}
