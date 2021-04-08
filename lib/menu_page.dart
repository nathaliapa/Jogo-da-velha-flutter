import 'package:flutter/material.dart';

import 'home_page.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Center(
        child:Container(
         padding:EdgeInsets.only(top: 50.0),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: <Widget>[
             Text('Jogo da Velha',
               style: TextStyle(
                 color: Colors.red,
                 fontSize: 50,
               ),),
             Image.asset('assets/images/22.png',
             ),
             // ignore: deprecated_member_use
             RaisedButton(
               color: Colors.red,
               shape: ContinuousRectangleBorder(
                   borderRadius: BorderRadius.circular(10.0)),
               child: Text(
                 'Jogar',
                 style: TextStyle(color: Colors.white, fontSize: 40.0),
               ),
               onPressed: _onClickJogo,
             ),
           ],
         ),
        ),

        ),
      );


  }

  void _onClickJogo() async {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomePage()));
  }
}
