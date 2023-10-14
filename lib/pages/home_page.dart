import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trilhadio/services/gerador_numero_aleatorio.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var numeroGerado = 0;
  var quantidadeDeCliques = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Meu App",
          style: GoogleFonts.roboto(),
        ),
      ),
      body: Container(
        color: Colors.amber,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(//Formador do conteúdo em coluna
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.cyan,
              child: Text(
                  "Ações do usuário",
              style: GoogleFonts.acme(fontSize: 20),
              ),
            ),
            SizedBox(//serve para fixar tamanhos
              width: 100,
              height: 100,
              child: Container(//são varios componentes para personalização
                color: Colors.orange,
                child: Text(
                    "Foi clicado $quantidadeDeCliques vezes",
                style: GoogleFonts.acme(fontSize: 20),
                ),
              ),
            ),
            Container(
              color: Colors.indigo,
              child: Text(
                  "O numero gerado foi: $numeroGerado",
              style: GoogleFonts.acme(fontSize: 20),
              ),
            ),
            Expanded(//expande ocupando todos os espaços disponiveis
              child: Container(
                color: Colors.grey,
                child: Row(//Formador do conteúdo em linha
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(//Preenche com a cor configurada
                      flex: 1,//faz com que a cor vermeha preencha 2 espaços
                      child: Container(
                        color: Colors.red,
                        child: Text(
                          "Nome: ",
                          style: GoogleFonts.acme(fontSize: 20),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.blue,
                        child: Text(
                          "Dieferson Leite",
                          style: GoogleFonts.acme(fontSize: 20),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.green,
                        child: Text(
                          "33",
                          style: GoogleFonts.acme(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_box),
        onPressed: () {
          setState(() {
            quantidadeDeCliques = quantidadeDeCliques + 1;
            numeroGerado = GeradorNumeroAleatorio.gerarNumeroAleatorio(1000);
          });
        },
      ),
    );
  }
}