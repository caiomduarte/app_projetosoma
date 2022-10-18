import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

// Será a nossa tela de Home
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Declarando nossa variavel
  var total = "?";

  @override
  Widget build(BuildContext context) {
    print("Executou o metodo build denovo");
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo Statefull"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Qual é o valor da soma abaixo?",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
              Text("30 +  20 = $total", style: TextStyle(fontSize: 30)),
              ElevatedButton(
                child: Text("Calcular"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue, //cor de fundo de um botao
                    onPrimary: Colors.white // cor do texto do botao
                    ),
                onPressed: () {
                  setState(() {
                    total = "50";
                  });

                  print("Clicou no botão!");
                  print("O valor de total é $total");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
