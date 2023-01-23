import 'package:campo_minado/components/campo_widget.dart';
import 'package:campo_minado/components/resultado_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/campo.dart';

class CampoMinadoApp extends StatelessWidget {
  const CampoMinadoApp({super.key});

  _reiniciar(){
    print("Reiniciar");
  }

  _abrir(Campo c){
    print("abrir");
  }
  void _alternarMarcacao(Campo c){
    print('alternar marcacao');
  }

  @override
  Widget build(BuildContext context) {
    Campo campo = Campo(linha: 0, coluna: 0);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: ResultadoWidget(venceu: true, onReiniciar: _reiniciar,),
        body: Container(child: CampoWidget(
          campo: campo,
          onAbrir: _abrir,
          onAlternarMarcacao: _alternarMarcacao,
        )),
      ),

    );
  }
}