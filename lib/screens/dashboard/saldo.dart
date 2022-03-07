import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:studying_provider/models/saldo.dart';

class SaldoCard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 120,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Consumer<Saldo>(
            builder: (context, valor, child) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Seu saldo:", style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[800],
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      valor.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
