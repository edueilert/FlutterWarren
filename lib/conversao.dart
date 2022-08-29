// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Conversao extends StatefulWidget {
  const Conversao({Key? key}) : super(key: key);

  @override
  State<Conversao> createState() => Estrutura();
}

class Estrutura extends State<Conversao> {
  List<String> items = ["Ethereum", "Litecoin", "Bitcoin"];
  String? selectedItem = "Ethereum";

  bool isVisible25 = false;
  bool isVisible50 = false;
  bool isVisible75 = false;
  bool isVisible100 = false;

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
          SizedBox(
            width: 375,
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(width: 2, color: Colors.pink)),
              ),
              value: selectedItem,
              items: items
                  .map((item) =>
                      DropdownMenuItem<String>(value: item, child: Text(item)))
                  .toList(),
              onChanged: (item) =>
                  setState(() => selectedItem = item as String?),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(width: 2, color: Colors.pink)),
                hintText: 'Montante a ser convertido',
              ),
            ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(0, 20),
                        primary: isVisible25 ? Colors.pink : Colors.black),
                    onPressed: () {
                      setState(() {
                        isVisible25 = !isVisible25;
                      });
                    },
                    child: const Text('25%')),
                const SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(0, 20),
                        primary: isVisible50 ? Colors.pink : Colors.black),
                    onPressed: () {
                      setState(() {
                        isVisible50 = !isVisible50;
                      });
                    },
                    child: const Text('50%')),
                const SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(0, 20),
                        primary: isVisible75 ? Colors.pink : Colors.black),
                    onPressed: () {
                      setState(() {
                        isVisible75 = !isVisible75;
                      });
                    },
                    child: const Text('75%')),
                const SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(0, 20),
                        primary: isVisible100 ? Colors.pink : Colors.black),
                    onPressed: () {
                      setState(() {
                        isVisible100 = !isVisible100;
                      });
                    },
                    child: const Text('100%')),
              ]),
          const Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              '  Para receber em:',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 375,
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(width: 2, color: Colors.pink)),
              ),
              value: selectedItem,
              items: items
                  .map((item) =>
                      DropdownMenuItem<String>(value: item, child: Text(item)))
                  .toList(),
              onChanged: (item) =>
                  setState(() => selectedItem = item as String?),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(width: 2, color: Colors.pink)),
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
