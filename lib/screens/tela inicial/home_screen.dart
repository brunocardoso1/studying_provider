import 'package:flutter/material.dart';
import 'package:studying_provider/screens/card/horizontal_card.dart';
import 'package:studying_provider/screens/dashboard/dashboard.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent[100],
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Bytebank",
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                    offset: Offset(3.0, 1.0),
                    blurRadius: 5.0,
                    color: Colors.yellow[700]),
              ],
            ),
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: 'O Banco dos ',
                  style: TextStyle(color: Colors.black, fontSize: 18)),
              TextSpan(
                  text: 'Devs!',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.bold)),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: ButtonBar(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.black)),
                  child: Text("Entrar"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Dashboard()));
                  },
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Colors.black)),
                  child: Text("Cadastrar"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BuildCards()));
                  },
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
