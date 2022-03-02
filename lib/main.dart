import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studying_provider/screens/dashboard/dashboard.dart';

import 'models/saldo.dart';
import 'models/transferencias.dart';

void main() => runApp(MultiProvider(
  providers: [
    ChangeNotifierProvider(create: (context) => Saldo(0)),
    ChangeNotifierProvider(create: (context) => Transferencias()),
  ],
  child: MyApp(),

));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Dashboard(),
    );
  }
}
