// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';

class LitecoinMain extends StatefulWidget {
  const LitecoinMain({Key? key}) : super(key: key);

  @override
  State<LitecoinMain> createState() => L5d();
}

class L5d extends State<LitecoinMain> {
  double valorAtual = 0.68;
  double capMercado = 0.45;
  double valorMin = 0.07;
  double valorMax = 0.77;

  final List<Feature> features = [
    Feature(
      title: "Litecoin",
      color: Colors.pink,
      data: [0.07, 0.77, 0.45, 0.36, 0.68],
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
                      Navigator.pushNamed(context, "/litecoinMain");
                    },
                    child: const Text(' 5D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(10, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, "/litecoin10D");
                    },
                    child: const Text('10D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(35, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, "/litecoin15D");
                    },
                    child: const Text('15D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(35, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, "/litecoin30D");
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
                      Navigator.pushNamed(context, "/litecoin50D");
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
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                ' Informações',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: const Text("Litecoin"),
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

class Litecoin10d extends StatefulWidget {
  const Litecoin10d({Key? key}) : super(key: key);

  @override
  State<Litecoin10d> createState() => L10d();
}

class L10d extends State<Litecoin10d> {
  double valorAtual = 0.84;
  double capMercado = 0.58;
  double valorMin = 0.360;
  double valorMax = 0.93;

  final List<Feature> features = [
    Feature(
      title: "Litecoin",
      color: Colors.pink,
      data: [0.36, 0.50, 0.50, 0.30, 0.93, 0.84],
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
                      Navigator.pushNamed(context, "/litecoinMain");
                    },
                    child: const Text(' 5D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(10, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, "/litecoin10D");
                    },
                    child: const Text('10D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(35, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, "/litecoin15D");
                    },
                    child: const Text('15D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(35, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, "/litecoin30D");
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
                      Navigator.pushNamed(context, "/litecoin50D");
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
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                ' Informações',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: const Text("Litecoin"),
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

class Litecoin15d extends StatefulWidget {
  const Litecoin15d({Key? key}) : super(key: key);

  @override
  State<Litecoin15d> createState() => L15d();
}

class L15d extends State<Litecoin15d> {
  double valorAtual = 0.9;
  double capMercado = 0.70;
  double valorMin = 0.2;
  double valorMax = 1;

  final List<Feature> features = [
    Feature(
      title: "Litecoin",
      color: Colors.pink,
      data: [1, 0.2, 0.3, 0.7, 0.6, 0.9],
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
                      Navigator.pushNamed(context, "/litecoinMain");
                    },
                    child: const Text(' 5D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(10, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, "/litecoin10D");
                    },
                    child: const Text('10D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(35, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, "/litecoin15D");
                    },
                    child: const Text('15D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(35, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, "/litecoin30D");
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
                      Navigator.pushNamed(context, "/litecoin50D");
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
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                ' Informações',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: const Text("Litecoin"),
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

class Litecoin30d extends StatefulWidget {
  const Litecoin30d({Key? key}) : super(key: key);

  @override
  State<Litecoin30d> createState() => L30d();
}

class L30d extends State<Litecoin30d> {
  double valorAtual = 0.33;
  double capMercado = 0.38;
  double valorMin = 0.33;
  double valorMax = 0.87;

  final List<Feature> features = [
    Feature(
      title: "Litecoin",
      color: Colors.pink,
      data: [0.8, 0.56, 0.87, 0.65, 1, 0.33],
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
                      Navigator.pushNamed(context, "/litecoinMain");
                    },
                    child: const Text(' 5D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(10, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, "/litecoin10D");
                    },
                    child: const Text('10D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(35, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, "/litecoin15D");
                    },
                    child: const Text('15D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(35, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, "/litecoin30D");
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
                      Navigator.pushNamed(context, "/litecoin50D");
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
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                ' Informações',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: const Text("Litecoin"),
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

class Litecoin50d extends StatefulWidget {
  const Litecoin50d({Key? key}) : super(key: key);

  @override
  State<Litecoin50d> createState() => L50d();
}

class L50d extends State<Litecoin50d> {
  double valorAtual = 1;
  double capMercado = 0.68;
  double valorMin = 0.30;
  double valorMax = 1;
  final List<Feature> features = [
    Feature(
      title: "Litecoin",
      color: Colors.pink,
      data: [0.30, 0.55, 0.35, 0.67, 1, 1],
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
                      Navigator.pushNamed(context, "/litecoinMain");
                    },
                    child: const Text(' 5D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(10, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, "/litecoin10D");
                    },
                    child: const Text('10D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(35, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, "/litecoin15D");
                    },
                    child: const Text('15D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(35, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, "/litecoin30D");
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
                      Navigator.pushNamed(context, "/litecoin50D");
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
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                ' Informações',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: const Text("Litecoin"),
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
