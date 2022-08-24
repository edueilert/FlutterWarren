import 'package:flutter/material.dart';
import 'package:myapp/controlers/home_controler.dart';

// ignore: must_be_immutable
class Conversao extends StatefulWidget {
  Conversao({Key? key}) : super(key: key);

  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  HomeController homeController;

  HomeView() {
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  State<Conversao> createState() => Estrutura();
}

class Estrutura extends State<Conversao> {
  String dropdownValue = "Selecione uma moeda";

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
            value: dropdownValue,
            icon: const Icon(Icons.arrow_drop_down),
            elevation: 16,
            style: const TextStyle(color: Colors.black),
            underline: Container(
              height: 1,
              color: Colors.black,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>[
              'Selecione uma moeda',
              'Ethereum',
              'Bitecoin',
              'Litecoin'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
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
                    color: Colors.black,
                    textColor: Colors.white,
                    onPressed: () {},
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
                    color: Colors.black,
                    textColor: Colors.white,
                    onPressed: () {},
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
                    color: Colors.black,
                    textColor: Colors.white,
                    onPressed: () {},
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
                    color: Colors.black,
                    textColor: Colors.white,
                    onPressed: () {},
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
          DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(Icons.arrow_drop_down),
            elevation: 16,
            style: const TextStyle(color: Colors.black),
            underline: Container(
              height: 1,
              color: Colors.black,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>[
              'Selecione uma moeda',
              'Ethereum',
              'Bitecoin',
              'Litecoin'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
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
                  onPressed: () {},
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
