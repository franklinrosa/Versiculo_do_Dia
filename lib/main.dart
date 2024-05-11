import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _frases = [
    'O amor é sofredor, é benigno; o amor não é invejoso; o amor não trata com leviandade, não se ensoberbece, não se porta com indecência, não busca os seus interesses, não se irrita, não suspeita mal. 1 Coríntios 13:4-5',
    'Regozijai-vos sempre. Orai sem cessar. Em tudo dai graças, porque esta é a vontade de Deus em Cristo Jesus para convosco. 1 Tessalonicenses 5:16-18',
    'Não estejais inquietos por coisa alguma; antes, as vossas petições sejam em tudo conhecidas diante de Deus, pela oração e súplicas, com ação de graças. E a paz de Deus, que excede todo o entendimento, guardará os vossos corações e os vossos sentimentos em Cristo Jesus.  Filipenses 4:6-7',
    'O Senhor te abençoe e te guarde; o Senhor faça resplandecer o seu rosto sobre ti e tenha misericórdia de ti; o Senhor sobre ti levante o seu rosto e te dê a paz. Números 6:24-26',
    'Por isso, vos digo que tudo o que pedirdes, orando, crede que o recebereis e tê-lo-eis. Marcos 11:24',
    'Bendito o varão que confia no Senhor, e cuja esperança é o Senhor. Porque ele será como a árvore plantada junto às águas, que estende as suas raízes para o ribeiro e não receia quando vem o calor, mas a sua folha fica verde; e, no ano de sequidão, não se afadiga nem deixa de dar fruto. Jeremias 17:7-8',
    'E estas palavras que hoje te ordeno estarão no teu coração; e as intimarás a teus filhos e delas falarás assentado em tua casa, e andando pelo caminho, e deitando-te, e levantando-te. Deuteronômio 6:6-7',
    'Todas as vossas coisas sejam feitas com amor. 1 Coríntios 16:14',
    'Mas os que esperam no Senhor renovarão as suas forças e subirão com asas como águias; correrão e não se cansarão; caminharão e não se fatigarão. Isaías 40:31',
    'Colossenses 3,23 “Tudo o que vocês fizerem façam de coração, como quem obedece ao Senhor, e não aos homens”.',
    'Filipenses 3,13-14 “Irmãos, não acho que eu já tenha alcançado o prêmio, mas uma coisa eu faço: esqueço-me do que fica para trás e avanço para o que está na frente. Lanço-me em direção à meta, em vista do prêmio do alto, que Deus nos chama a receber em Jesus Cristo”.',
    'Deuteronômio 31,6 “Sejam fortes e corajosos! Não tenham medo, porque Javé seu Deus é quem vai com você. Ele não o deixará, e jamais o abandonará”.',
    'João 14, 13-14 “O que vocês pedirem em meu nome, eu o farei, para que o Pai seja glorificado no Filho. Se vocês pedirem qualquer coisa em meu nome, eu o farei”.',
    'Lucas 12,29-30 “Não fiquem procurando o que vão comer e o que vão beber. Não fiquem inquietos. O Pai bem sabe que vocês têm necessidade dessas coisas”.',
    'Romanos 8,31 “Se Deus está a nosso favor, quem estará contra nós?”',
    'Romanos 12,21 “Não se deixe vencer pelo mal, mas vença o mal com o bem”.',
    'Salmos 41,1 “Feliz quem cuida do fraco e do indigente: Javé o salva no dia infeliz”.',
    'Filipenses 4,6 “Não se inquietem com nada. Apresentem a Deus todas as necessidades de vocês através da oração e da súplica, em ação de graças”.',
    'Filipenses 4,13 “Tudo posso naquele que me fortalece”.',
    '2  Crônicas 15,7 “Fiquem firmes, não desanimem, porque suas obras serão recompensadas”.',
    'Salmos 27,1 “Javé é minha luz e salvação: de quem terei medo?”',
    'Efésios 6,7-8 “Sirvam de bom grado, como se servissem ao Senhor, e não a homens. Vocês sabem que cada um receberá do Senhor o bem que tiver feito”.',
    'Provérbios 16,3 “Confie a Javé o que você faz, e seus projetos se realizarão”.',
    'Efésios 4,28 “Ocupe-se trabalhando com as próprias mãos em algo útil, e tenha assim o que repartir com os Pobres”.',
    'Provérbios 19,17 “Quem ajuda o Pobre empresta a Deus, que lhe dará a recompensa devida”.',
    'Isaías 58,7 “Repartir a comida com quem passa fome, hospedar em sua casa os Pobres sem abrigo, vestir aquele que se encontra nu, e não se fechar à sua própria gente”.',
    'Hebreus 13,16 “Não se esqueçam de ser generosos, e saibam repartir com os outros, porque tais são os sacrifícios que agradam a Deus”.',
  ];
  var _fraseGerada = 'Clique no Botão para ver um Versículo!';

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Versículo do Dia'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          /*width: double.infinity,
        decoration:
            BoxDecoration(border: Border.all(width: 3, color: Colors.amber)),
            */
          child: ListView(
            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //  crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'imagens/slogan.png',
                height: 150,
                width: 150,
                alignment: Alignment.topCenter,
              ),
              Text(
                _fraseGerada,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    color: Colors.black),
              ),
              ElevatedButton(
                onPressed: _gerarFrase,
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey[900],
                    foregroundColor: Colors.white,
                    fixedSize: const Size(200, 70)),
                child: const Text(
                  'Novo Versículo',
                  style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
