// ignore_for_file: deprecated_member_use, constant_identifier_names, avoid_print, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:myapp/controlers/home_controler.dart';

// ignore: must_be_immutable
class Conversao extends StatefulWidget {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  final data = ListaCrypto.values;
  String valor = "";
  String valor2 = "";

  Conversao({Key? key}) : super(key: key) {}

  @override
  State<Conversao> createState() => Estrutura();
}

class Estrutura extends State<Conversao> {
  List<String> items = ["Ethereum", "Litecoin", "Bitcoin"];
  String? selectedItem;
  bool isVisible25 = false;
  bool isVisible50 = false;
  bool isVisible75 = false;
  bool isVisible100 = false;

  var valor;
  var valor2;

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
                      borderSide:
                          const BorderSide(width: 2, color: Colors.pink)),
                ),
                hint: const Text("Selecione sua moeda"),
                items: widget.data.map((item) {
                  return DropdownMenuItem(
                      value: item.name, child: Text(item.name));
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedItem = newValue!;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: TextField(
              onChanged: (totext) {
                valor = totext;
                print("Primeira Moeda: $totext");
              },
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(width: 2, color: Colors.pink)),
                hintText: 'Montante a ser convertido',
              ),
            ),
          ),
          const SizedBox(
            height: 25,
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
          const SizedBox(
            height: 25,
          ),
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
                      borderSide:
                          const BorderSide(width: 2, color: Colors.pink)),
                ),
                hint: const Text("Selecione sua moeda"),
                items: widget.data.map((item) {
                  return DropdownMenuItem(
                      value: item.name, child: Text(item.name));
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedItem = newValue!;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: TextField(
              onChanged: (fromtext) {
                valor2 = fromtext;
              },
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
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      foregroundColor: MaterialStateProperty.all(Colors.pink),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(20)),
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 18))),
                  onPressed: () {
                    setState(() {});
                  },
                  child: const Text('Cancelar')),
              const SizedBox(
                width: 15,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.pink),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(20)),
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 18))),
                  onPressed: () {
                    setState(() {});
                  },
                  child: const Text('Confirmar')),
            ],
          ),
        ]),
      );
}

enum ListaCrypto { Bitcoin, Litecoin, Ethereum }
