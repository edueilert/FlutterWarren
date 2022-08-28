// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Conversao extends StatefulWidget {
  const Conversao({Key? key}) : super(key: key);

  @override
  State<Conversao> createState() => Estrutura();
}

class Estrutura extends State<Conversao> {
  final dropValue = ValueNotifier("");
  final dropOpcoes = ["Ethereum", "Litecoin", "Bitcoin"];
  bool isVisible25 = false;
  bool isVisible50 = false;
  bool isVisible75 = false;
  bool isVisible100 = false;
  String value = "";

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          Row(
            children: const <Widget>[
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  ' Conversão de moeda',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              '  Converter de:',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          DropdownButton<String>(
            hint: const Text("Selecione uma moeda"),
            value: (value.isEmpty) ? null : value,
            onChanged: (escolha) => dropValue.value = escolha.toString(),
            items: dropOpcoes
                .map((op) => DropdownMenuItem(
                      value: op,
                      child: Text(op),
                    ))
                .toList(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Montante a ser convertido',
              ),
            ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ButtonTheme(
                  minWidth: 10.0,
                  height: 5.0,
                  child: RaisedButton(
                    color: isVisible25 ? Colors.pink : Colors.black,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        isVisible25 = !isVisible25;
                      });
                    },
                    child: const Text("25%"),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ButtonTheme(
                  minWidth: 10.0,
                  height: 5.0,
                  child: RaisedButton(
                    // ignore: unnecessary_null_comparison
                    color: isVisible50 ? Colors.pink : Colors.black,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        isVisible50 = !isVisible50;
                      });
                    },
                    child: const Text("50%"),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ButtonTheme(
                  minWidth: 10.0,
                  height: 5.0,
                  child: RaisedButton(
                    color: isVisible75 ? Colors.pink : Colors.black,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        isVisible75 = !isVisible75;
                      });
                    },
                    child: const Text("75%"),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ButtonTheme(
                  minWidth: 10.0,
                  height: 5.0,
                  child: RaisedButton(
                    color: isVisible100 ? Colors.pink : Colors.black,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        isVisible100 = !isVisible100;
                      });
                    },
                    child: const Text("100%"),
                  ),
                ),
              ]),
          const Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              '  Para receber em:',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Montante a ser convertido',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ButtonTheme(
                minWidth: 100.0,
                height: 50.0,
                child: RaisedButton(
                  color: Colors.white,
                  textColor: Colors.black,
                  onPressed: () {
                    Navigator.pushNamed(context, "/ethereumMain");
                  },
                  child: const Text("Cancelar"),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              ButtonTheme(
                minWidth: 100.0,
                height: 50.0,
                child: RaisedButton(
                  color: Colors.pink,
                  textColor: Colors.white,
                  onPressed: () {},
                  child: const Text("Confirmar"),
                ),
              ),
            ],
          ),
        ]),
      );
}
