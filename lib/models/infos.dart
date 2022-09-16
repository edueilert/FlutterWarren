import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Detalhes extends StatelessWidget {
  final String moeda;

  const Detalhes({Key? key, required this.moeda}) : super(key: key);

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
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                " $moeda",
                style:
                    const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      );
}

// ignore: must_be_immutable
class Grafico extends StatelessWidget {
  static final List<double> data = [];
  static const String moeda = "";
  final List<Feature> features = [
    Feature(
      title: moeda,
      color: Colors.pink,
      data: data,
    ),
  ];

  Grafico({Key? key, required List<double> data, required String moeda})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
          body: Column(
        children: [
          LineGraph(
            features: features,
            size: const Size(400, 200),
            labelX: const ["", "", "", "", ""],
            labelY: const [
              '0,00R\$',
              '0,10R\$',
              '0,25R\$',
              '0,50R\$',
              '1,00R\$',
              '1,50R\$'
            ],
            showDescription: false,
            graphColor: Colors.black87,
          ),
        ],
      ));
}

class Botao extends StatelessWidget {
  final String link1 = "";
  final String link2 = "";
  final String link3 = "";
  final String link4 = "";
  final String link5 = "";

  const Botao(
      {Key? key,
      required String link1,
      required String link2,
      required String link3,
      required String link4,
      required String link5})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(10, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, link1);
                    },
                    child: const Text(' 5D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(10, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, link2);
                    },
                    child: const Text('10D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(35, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, link3);
                    },
                    child: const Text('15D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(35, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, link4);
                    },
                    child: const Text('30D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(30, 10),
                        maximumSize: const Size(60, 20),
                        primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, link5);
                    },
                    child: const Text('50D')),
                const SizedBox(
                  width: 5,
                ),
                IconButton(
                    icon: const Icon(Icons.insert_chart_outlined),
                    onPressed: () {}),
              ],
            ),
          ],
        ),
      );
}

class Informacoes extends StatelessWidget {
  final double valorAtual;
  final double capMercado;
  final double valorMin;
  final double valorMax;
  final String moeda = "";

  Informacoes(
      {Key? key,
      required this.valorAtual,
      required this.capMercado,
      required this.valorMin,
      required this.valorMax})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          children: [
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                ' Informações',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text(moeda),
              subtitle: const Text('Valor Atual'),
              trailing: Text("R\$ $valorAtual"),
            ),
            ListTile(
              title: const Text("Cap de mercado"),
              trailing: Text("+ $capMercado%"),
            ),
            ListTile(
              title: const Text("Valor mínimo"),
              trailing: Text("R\$ $valorMin"),
            ),
            ListTile(
              title: const Text("Valor máximo"),
              trailing: Text("R\$ $valorMax"),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(400, 50), primary: Colors.pink),
                onPressed: () {
                  Navigator.pushNamed(context, "/conversao");
                },
                child: const Text(' Converter Moeda')),
          ],
        ),
      );
}

detalhes(String moeda) {
  return const Detalhes(moeda: '');
}

grafico(String moeda, List<double> data) {
  return Grafico(moeda: '', data: const []);
}

botao(String link1, String link2, String link3, String link4, String link5) {
  return const Botao(link1: '', link2: '', link3: '', link4: '', link5: '');
}

informacoes(
    double valorAtual, double capMercado, double valorMin, double valorMax) {
  return Informacoes(valorAtual: 0, capMercado: 0, valorMin: 0, valorMax: 0);
}
