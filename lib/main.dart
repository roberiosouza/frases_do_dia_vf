import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home()

  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

String getFrases(int posicao){
  var frases = [
    "Acredite em si mesmo e todo o resto se encaixará.",
    "O sucesso é a soma de pequenos esforços repetidos dia após dia.",
    "Nunca é tarde demais para ser aquilo que você sempre desejou ser.",
    "A persistência é o caminho do êxito.",
    "Grandes realizações são possíveis quando se dá importância aos pequenos passos.",
    "A única maneira de fazer um ótimo trabalho é amar o que você faz.",
    "Você é mais forte do que pensa.",
    "Acredite que você pode e você já está no meio do caminho.",
    "Não espere por uma oportunidade, crie uma.",
    "O fracasso é apenas a oportunidade para começar de novo com mais inteligência.",
    "A única limitação para o nosso sucesso de amanhã são as nossas dúvidas de hoje.",
    "A verdadeira motivação vem de realização, desenvolvimento pessoal, satisfação no trabalho e reconhecimento.",
    "Você não precisa ser grande para começar, mas você precisa começar para ser grande.",
    "A única pessoa que você está destinado a se tornar é a pessoa que você decide ser.",
    "As pessoas costumam dizer que a motivação não dura. Bem, nem o banho – e é por isso que recomendamos diariamente.",
    "Se você pode sonhar, você pode fazer.",
    "A diferença entre o ordinário e o extraordinário é aquele pouquinho a mais.",
    "Os desafios são o que fazem a vida interessante e superá-los é o que faz a vida ter sentido.",
    "Seu tempo é limitado, então não o desperdice vivendo a vida de outra pessoa.",
    "Acredite que você pode e você já está no meio do caminho.",
    "Não é o que você olha que importa, é o que você vê.",
    "A vida é 10% o que acontece comigo e 90% de como eu reajo a isso.",
    "Acredite que você pode e você já está no meio do caminho.",
    "Não importa quão devagar você vá, desde que você não pare.",
    "Nunca desista de um sonho só por causa do tempo que levará para realizá-lo. O tempo vai passar de qualquer forma.",
    "Quanto mais você suar no treino, menos sangrará na batalha.",
    "O único lugar onde o sucesso vem antes do trabalho é no dicionário.",
    "Se você não traçar um plano, será parte do plano de outra pessoa.",
    "Você não precisa ver a escada inteira, apenas dê o primeiro passo.",
    "Vá confiante na direção dos seus sonhos. Viva a vida que você imaginou.",
    "O que não nos mata nos fortalece.",
    "As grandes realizações não são feitas por impulso, mas por uma soma de pequenas realizações.",
    "A vida é o que acontece enquanto você está ocupado fazendo outros planos.",
    "Só se pode alcançar um grande êxito quando nos mantemos fiéis a nós mesmos.",
    "Nunca é tarde demais para ser aquilo que você poderia ter sido.",
    "Não espere por uma crise para descobrir o que é importante em sua vida.",
    "Transforme seus sonhos em metas e suas metas em conquistas.",
    "A força não vem da capacidade física. Ela vem de uma vontade indomável.",
    "Você é o único responsável por sua felicidade.",
    "Acredite na força dos seus sonhos. Deus é justo e não colocaria em seu coração um desejo impossível de ser realizado.",
    "A melhor maneira de prever o futuro é criá-lo.",
    "Faça o que você pode, com o que você tem, onde você está.",
    "A jornada de mil milhas começa com um único passo.",
    "O que você faz hoje pode melhorar todos os seus amanhãs.",
    "Seja a mudança que você deseja ver no mundo.",
    "Não desista, porque cada esforço tem o seu valor.",
    "Sonhos não têm pernas, mas você tem!",
    "O único limite para a sua realização de amanhã são as suas dúvidas de hoje.",
    "Acredite em si mesmo e todo o resto se encaixará."
  ];
  return frases[posicao];
}

class _HomeState extends State<Home> {

  int _posicao = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
                "images/frases.jpg",
            ),
            Text(
              _posicao > -1 ? getFrases(_posicao) : "Clique abaixo para gerar uma frase ",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.italic,
                color: Colors.black
              )
            ),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    _posicao = Random().nextInt(49);
                  });
                },
                child: Text("Clique Aqui"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                    ),
                ),
            )
          ],
        ),
      ),
    );
  }
}
