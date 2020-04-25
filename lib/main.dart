import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Transferências'),),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
        ),
        body: ListaTranferencias()
      ),
    ));

class ListaTranferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemTransferencia(Transferencia(100.0, 1001)),
        ItemTransferencia(Transferencia(1200.0, 2002)),
        ItemTransferencia(Transferencia(1300.0, 3003)),
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;
  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
          leading: Icon(Icons.monetization_on),
          title: Text(_transferencia._valor.toString()),
          subtitle: Text(_transferencia._numeroConta.toString()),
        )
    );
  }
}

class Transferencia {
  final double _valor;
  final int _numeroConta;

  Transferencia(this._valor, this._numeroConta);
}