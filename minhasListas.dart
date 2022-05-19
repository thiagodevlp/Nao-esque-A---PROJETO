import 'package:flutter/material.dart';

class minhasListas extends StatelessWidget {
  int contador = 0;

  void adicionarProduto (){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Minhas listas'),
        centerTitle: true,
      ),
      body: corpoPagina2(),
      //botão para adicionar lista
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          
        },
        child: Icon(Icons.add),
      ),
    );
  }

  corpoPagina2() {
    return ListView(
      padding: const EdgeInsets.all(6),
      children: <Widget>[
        Card(child: ListTile(title: Text('List 1'), trailing: Icon(Icons.edit))),
        Card(child: ListTile(title: Text('List 1'), trailing: Icon(Icons.edit))),
        Card(child: ListTile(title: Text('List 1'), trailing: Icon(Icons.edit))),

      ],
    );
  }
}

