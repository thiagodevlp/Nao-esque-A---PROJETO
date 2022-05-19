import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'minhasListas.dart';


class home extends StatefulWidget {



  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('APP - Não esqueçA'),
        centerTitle: true,
      ),
      body: corpoPaginaInicial(),
    );
  }

  corpoPaginaInicial() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            Container(
              alignment: Alignment.center,
              child: Text('Bem-vindo ao app Não Esqueça!\n\n'
                  'Aqui você pode fazer sua lista de compras, editar e calcular '
                  'o valor com apenas um click.\n\n\n\n'),
            ),


            FlatButton(
              color: Colors.black87,
              textColor: Colors.white,
              child: Text("Criar nova lista de compras"),
              onPressed: () {
                ;
              },
            ),
            SizedBox(height: 5 ),

            FlatButton(
              color: Colors.black87,
              textColor: Colors.white,
              child: Text("Editar minhas listas de compras"),
              onPressed: () {
                _minhasListas(context, minhasListas());
              },
            ),
            SizedBox(height: 5 ),
          ],
        ),
      ),
    );
  }


  }

  _minhasListas(ctx, page) {
    Navigator.push(ctx, MaterialPageRoute(builder: (BuildContext context) {
      return page;
    }));
}