// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';

class Litecoin extends StatefulWidget {
  const Litecoin({Key? key}) : super(key: key);

  @override
  State<Litecoin> createState() => ListagemCrypto();
}

class ListagemCrypto extends State<Litecoin> {
  final List<Feature> features = [
    Feature(
      title: "Litecoin",
      color: Colors.pink,
      data: [0.4, 0.2, 0.5, 0.6, 1, 0.9],
    ),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text("Detalhes"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_circle_left_outlined),
            onPressed: () {
              Navigator.pushNamed(context, "/");
            },
          ),
        ),
        body: Column(
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                ' Moeda ',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                " Litecoin",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            LineGraph(
              features: features,
              size: const Size(350, 250),
              labelX: const ['5D', '10D', '30D', '50D'],
              labelY: const [
                '0,00R\$',
                '0,10R\$',
                '0,25R\$',
                '0,50R\$',
                '1,00R\$',
                '2,00R\$'
              ],
              showDescription: true,
              graphColor: Colors.black87,
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                ' Informações',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              title: Text("Litecoin"),
              subtitle: Text('Valor Atual'),
              trailing: Text("R\$20.0000"),
            ),
            const ListTile(
              title: Text("Cap de mercado"),
              trailing: Text("+0,2%"),
            ),
            const ListTile(
              title: Text("Valor mínimo"),
              trailing: Text("R\$ 0,02"),
            ),
            const ListTile(
              title: Text("Valor máximo"),
              trailing: Text("R\$ 0,47"),
            ),
            ButtonTheme(
              minWidth: 350.0,
              height: 50.0,
              child: RaisedButton(
                color: Colors.pink,
                textColor: Colors.white,
                onPressed: () {},
                child: const Text("Converter moeda"),
              ),
            ),
          ],
        ),
      );
}
