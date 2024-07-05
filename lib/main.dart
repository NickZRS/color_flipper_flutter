import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App Color Flipper",
      home: MudarCorTela(),
    );
  }
}

class MudarCorTela extends StatefulWidget{
  @override
  MudarStatusCorTela createState() => MudarStatusCorTela(); 
}

class MudarStatusCorTela extends State<MudarCorTela> {
  Color corFundo = Colors.white;

  void mudarCor(){
    setState(() {
     corFundo = Color((Random().nextDouble()*0xFFFFFF).toInt()).withOpacity(1.0); 


    }
    );
    }

    @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: corFundo,
      appBar: AppBar(
        title: Text("Mudar cor da tela"),
        ),
        body: Center(
          child: ElevatedButton(onPressed: mudarCor,
          child: Text("Mudar Cor"),
          ),
        ),
    );
  }
  }

