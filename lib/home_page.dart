import 'package:flutter/material.dart';
import 'package:flutter_avaliacao/menu_page.dart';
import 'package:flutter_avaliacao/velha_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final TextEditingController _controladorNome = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Jogo da Velha'),
          centerTitle: true,
          automaticallyImplyLeading: false,
      ),
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _controladorNome,
                style: TextStyle(
                  fontSize: 25,
                ),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.person,
                    size: 50.0,
                    ),
                    labelText: 'Jogador',
                ),
              ),
            ),
            Text('Selecione o nivel de dificuldade',
            style: TextStyle(
              fontSize: 25,
              ),
            ),
            // ignore: deprecated_member_use
          RaisedButton(

            color: Colors.green,
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Text(
              'Tosco',
              style: TextStyle(color: Colors.white, fontSize: 25.0),
            ),
            onPressed: _onClickJogar,
          ),
            RaisedButton(

              color: Colors.green,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Text(
                'Hard',
                style: TextStyle(color: Colors.white, fontSize: 25.0),
              ),
              onPressed: _onClickJogar,
            ),
          // ignore: deprecated_member_use
          RaisedButton(

            color: Colors.red,
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Text(
              'Sair',
              style: TextStyle(color: Colors.white, fontSize: 25.0),
            ),
            onPressed: _onClickSair,
          ),
        ],
                  ),
    );
  }
  void _onClickJogar() async {

    String nome;

    setState(() {
      nome = _controladorNome.text;
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => VelhaPage(nome)));
    });

  }

  void _onClickSair() async {
  Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => Menu()));
}

}