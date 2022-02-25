import 'package:flutter/material.dart';
import 'package:studying_provider/screens/dashboard/saldo.dart';
import 'package:studying_provider/screens/deposito/formulario.dart';
import 'package:studying_provider/screens/transferencia/formulario.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bytebank'),
      ),
      body: ListView(
        children: [
          Align(alignment: Alignment.topCenter, child: SaldoCard()),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.yellow[200]),
                ),
                child: Text(
                  "Receber depósito",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FormularioDeposito();
                  }));
                },
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.yellow[600]),
                ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return FormularioTransferencia();
                    }));
                  },
                  child: Text("Nova transferencia", style: TextStyle(
                    color: Colors.black,
                  ),))
            ],
          ),
        ],
      ),
    );
  }
}
