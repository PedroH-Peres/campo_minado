import 'package:campo_minado/models/campo.dart';
import 'package:flutter_test/flutter_test.dart';

main(){
  group('Campo', (){

    test("Abrir campo COM Explosão", (){
       Campo c = Campo(linha: 0, coluna: 0);
       c.minar();

       expect(c.abrir, throwsException);
    });

    test("Abrir campo SEM Explosão", (){
       Campo c = Campo(linha: 0, coluna: 0);
       c.abrir();

       expect(c.aberto, isTrue);
    });
    test("Adicionar NÃO vizinho", (){
       Campo c1 = Campo(linha: 0, coluna: 0);
       Campo c2 = Campo(linha: 1, coluna: 3);
       c1.adicionarVizinho(c2);
       expect(c1.vizinhos.isEmpty, isTrue);
    });
    test("Adicionar vizinho", (){
       Campo c1 = Campo(linha: 0, coluna: 0);
       Campo c2 = Campo(linha: 1, coluna: 1);
       Campo c3 = Campo(linha: 0, coluna: 1);
       c1.adicionarVizinho(c2);
       c1.adicionarVizinho(c3);
       expect(c1.vizinhos.length, 2);
    });
  });
}