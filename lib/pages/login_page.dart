import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() =>  _LoginPageState();
}

class  _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(//para não sobrescrever a barra de status do app
      child: Scaffold(
        backgroundColor: Color.fromARGB(0, 0, 0, 0),//cor do fundo
        body: SizedBox(
          width: double.infinity,//para que o container ocupe o espaço inteiro
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, //tudo alinhado ao centro
            children: [
              const SizedBox(height: 70,),
              Container(//Nesse caso o container pode ser removido
                //width: 150,
                //height: 150,
                //color: Colors.amber, //removido o preenchimento
                child: const Icon(Icons.person, size: 125, color: Colors.orange),//adiciona o icone pessoa
              ),
              const SizedBox(height: 50,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                color: Colors.green,
                height: 30,
                alignment: Alignment.center,
                child: const Row(
                  children: [
                    Expanded(flex: 2, child: Text("Informe seu e-mail")),
                    Expanded(flex: 3, child: Text("e-mail: ")),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                color: Colors.green,
                height: 30,
                alignment: Alignment.center,
                child: const Row(
                  children: [
                    Expanded(flex: 2, child: Text("Informe a senha: ")),
                    Expanded(flex: 3, child: Text("Senha")),
                  ],
                ),
              ),
              Expanded(child: Container()), //Utilizar para espaçamento entre constainers
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                color: Colors.green,
                height: 30,
                alignment: Alignment.center,
                child: Text("Login"),
              ),
              const SizedBox(
                height: 20,//espaçamento em relação a parte inferior da tela
              ),
              Container(
                //width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                color: Colors.green,
                height: 30,
                alignment: Alignment.center,
                child: Text("Cadastro"),
              ),
              const SizedBox(
                height: 20,//espaçamento em relação a parte inferior da tela
              ),
            ],
          ),
        ),
      ),
    );
  }
}