import 'package:campo_minado/components/resultado_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CampoMinadoApp extends StatelessWidget {
  const CampoMinadoApp({super.key});

  _reiniciar(){
    print("Reiniciar");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: ResultadoWidget(venceu: true, onReiniciar: _reiniciar,),
        body: Container(child: Text("Tabuleiro")),
      ),

    );
  }
}