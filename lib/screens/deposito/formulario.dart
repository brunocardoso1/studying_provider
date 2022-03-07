import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studying_provider/components/editor.dart';
import 'package:studying_provider/models/saldo.dart';

const _dicaCampoValor = '0.00';
const _rotuloCampoValor = 'valor';

class FormularioDeposito extends StatelessWidget {
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Receber um Deposito"),
      ),
      body: SingleChildScrollView(

        child: Column(
          children: [
            Editor(
              dica: _dicaCampoValor,
              controlador: _controladorCampoValor,
              rotulo: _rotuloCampoValor,
              icone: Icons.monetization_on,
            ),
            ElevatedButton(

                onPressed: () => _criaDeposito(context),
                child: Text('Confirmar'))
          ],
        ),
      ),
    );
  }

  _criaDeposito(context){
    final double valor = double.tryParse(_controladorCampoValor.text);
    final depositoValido = _validaDeposito(valor);

    if(depositoValido){
      _atualizaEstado(context, valor);
      Navigator.pop(context);
    }

  }

  _validaDeposito(valor){
    final _campoPreenchido = valor != null;
    return _campoPreenchido;
  }

  _atualizaEstado(context, valor){
    Provider.of<Saldo>(context, listen: false).adiciona(valor);
  }

}
