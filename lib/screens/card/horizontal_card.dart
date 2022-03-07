import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studying_provider/screens/deposito/formulario.dart';
import 'package:studying_provider/screens/transferencia/formulario.dart';

class BuildCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(padding: EdgeInsets.only(left: 12)),
          buildCard(context, Icons.arrow_downward_sharp, "Receber depósito", FormularioDeposito()),
          buildCard(context, Icons.send, "Nova transferencia", FormularioTransferencia()),
          buildCard(context, Icons.attach_money, "Pagar", null),
        ],
      ),
    );
  }

  Widget buildCard(context, IconData icone, String title, Widget Navigate) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Navigate,));
        },
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(icone),
              ),
              Text(
                "$title",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.orange[300],
            borderRadius: BorderRadius.circular(10),
          ),
          width: 200,
          height: 150,
        ),
      ),
    );
  }
}
