import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';
import 'package:flutter/material.dart';

class BitcoinMain extends StatefulWidget {
  const BitcoinMain({Key? key}) : super(key: key);

  @override
  State<BitcoinMain> createState() => B5d();
}

class B5d extends State<BitcoinMain> {
  double valorAtual = 0.30;
  double capMercado = 0.38;
  double valorMin = 0.06;
  double valorMax = 0.48;

  final List<Feature> features = [
    Feature(
      title: "Bitcoin",
      color: Colors.pink,
      data: [0.09, 0.06, 0.48, 0.36, 0.30],
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
                " Bitcoin",
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
                      Navigator.pushNamed(context, "/bitcoinMain");
                    },
                    child: const Text(' 5D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(10, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin10D");
                    },
                    child: const Text('10D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(35, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin15D");
                    },
                    child: const Text('15D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(35, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin30D");
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
                      Navigator.pushNamed(context, "/bitcoin50D");
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
              title: const Text("Bitcoin"),
              subtitle: const Text('Valor Atual'),
              trailing: Text("R\$ $valorAtual"),
            ),
            ListTile(
              title: const Text("Cap de mercado"),
              trailing: Text("+ $capMercado%"),
            ),
            ListTile(
              title: const Text("Valor mínimo"),
              trailing: Text("R\$" + valorMin.toString()),
            ),
            ListTile(
              title: const Text("Valor máximo"),
              trailing: Text("R\$" + valorMax.toString()),
            ),
            ButtonTheme(
              minWidth: 350.0,
              height: 50.0,
              child: RaisedButton(
                color: Colors.pink,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, "/conversao");
                },
                child: const Text("Converter moeda"),
              ),
            ),
          ],
        ),
      );
}

class Bitcoin10d extends StatefulWidget {
  const Bitcoin10d({Key? key}) : super(key: key);

  @override
  State<Bitcoin10d> createState() => B10d();
}

class B10d extends State<Bitcoin10d> {
  double valorAtual = 0.33;
  double capMercado = 0.58;
  double valorMin = 0.25;
  double valorMax = 0.56;

  final List<Feature> features = [
    Feature(
      title: "Bitcoin",
      color: Colors.pink,
      data: [0.26, 0.56, 0.50, 0.40, 0.25, 0.33],
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
                " Bitcoin",
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
                      Navigator.pushNamed(context, "/bitcoinMain");
                    },
                    child: const Text(' 5D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(10, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin10D");
                    },
                    child: const Text('10D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(35, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin15D");
                    },
                    child: const Text('15D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(35, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin30D");
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
                      Navigator.pushNamed(context, "/bitcoin50D");
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
              title: const Text("Bitcoin"),
              subtitle: const Text('Valor Atual'),
              trailing: Text("R\$" + valorAtual.toString()),
            ),
            ListTile(
              title: const Text("Cap de mercado"),
              trailing: Text("+" + capMercado.toString() + "%"),
            ),
            ListTile(
              title: const Text("Valor mínimo"),
              trailing: Text("R\$" + valorMin.toString()),
            ),
            ListTile(
              title: const Text("Valor máximo"),
              trailing: Text("R\$" + valorMax.toString()),
            ),
            ButtonTheme(
              minWidth: 350.0,
              height: 50.0,
              child: RaisedButton(
                color: Colors.pink,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, "/conversao");
                },
                child: const Text("Converter moeda"),
              ),
            ),
          ],
        ),
      );
}

class Bitcoin15d extends StatefulWidget {
  const Bitcoin15d({Key? key}) : super(key: key);

  @override
  State<Bitcoin15d> createState() => B15d();
}

class B15d extends State<Bitcoin15d> {
  double valorAtual = 1;
  double capMercado = 0.70;
  double valorMin = 0.45;
  double valorMax = 1;

  final List<Feature> features = [
    Feature(
      title: "Bitcoin",
      color: Colors.pink,
      data: [0.55, 0.45, 1, 0.8, 0.5, 1],
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
                " Bitcoin",
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
                      Navigator.pushNamed(context, "/bitcoinMain");
                    },
                    child: const Text(' 5D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(10, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin10D");
                    },
                    child: const Text('10D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(35, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin15D");
                    },
                    child: const Text('15D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(35, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin30D");
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
                      Navigator.pushNamed(context, "/bitcoin50D");
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
              title: const Text("Bitcoin"),
              subtitle: const Text('Valor Atual'),
              trailing: Text("R\$" + valorAtual.toString()),
            ),
            ListTile(
              title: const Text("Cap de mercado"),
              trailing: Text("+" + capMercado.toString() + "%"),
            ),
            ListTile(
              title: const Text("Valor mínimo"),
              trailing: Text("R\$" + valorMin.toString()),
            ),
            ListTile(
              title: const Text("Valor máximo"),
              trailing: Text("R\$" + valorMax.toString()),
            ),
            ButtonTheme(
              minWidth: 350.0,
              height: 50.0,
              child: RaisedButton(
                color: Colors.pink,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, "/conversao");
                },
                child: const Text("Converter moeda"),
              ),
            ),
          ],
        ),
      );
}

class Bitcoin30d extends StatefulWidget {
  const Bitcoin30d({Key? key}) : super(key: key);

  @override
  State<Bitcoin30d> createState() => B30d();
}

class B30d extends State<Bitcoin30d> {
  double valorAtual = 0.70;
  double capMercado = 0.38;
  double valorMin = 0.33;
  double valorMax = 0.87;

  final List<Feature> features = [
    Feature(
      title: "Bitcoin",
      color: Colors.pink,
      data: [0.55, 0.33, 0.42, 0.55, 0.87, 0.70],
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
                " Bitcoin",
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
                      Navigator.pushNamed(context, "/bitcoinMain");
                    },
                    child: const Text(' 5D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(10, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin10D");
                    },
                    child: const Text('10D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(35, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin15D");
                    },
                    child: const Text('15D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(35, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin30D");
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
                      Navigator.pushNamed(context, "/bitcoin50D");
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
              title: const Text("Bitcoin"),
              subtitle: const Text('Valor Atual'),
              trailing: Text("R\$" + valorAtual.toString()),
            ),
            ListTile(
              title: const Text("Cap de mercado"),
              trailing: Text("+" + capMercado.toString() + "%"),
            ),
            ListTile(
              title: const Text("Valor mínimo"),
              trailing: Text("R\$" + valorMin.toString()),
            ),
            ListTile(
              title: const Text("Valor máximo"),
              trailing: Text("R\$" + valorMax.toString()),
            ),
            ButtonTheme(
              minWidth: 350.0,
              height: 50.0,
              child: RaisedButton(
                color: Colors.pink,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, "/conversao");
                },
                child: const Text("Converter moeda"),
              ),
            ),
          ],
        ),
      );
}

class Bitcoin50d extends StatefulWidget {
  const Bitcoin50d({Key? key}) : super(key: key);

  @override
  State<Bitcoin50d> createState() => B50d();
}

class B50d extends State<Bitcoin50d> {
  double valorAtual = 0.5;
  double capMercado = 0.68;
  double valorMin = 0.34;
  double valorMax = 0.88;

  final List<Feature> features = [
    Feature(
      title: "Bitcoin",
      color: Colors.pink,
      data: [0.34, 0.44, 0.88, 0.77, 0.45, 0.5],
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
                " Bitcoin",
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
                      Navigator.pushNamed(context, "/bitcoinMain");
                    },
                    child: const Text(' 5D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(10, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin10D");
                    },
                    child: const Text('10D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(35, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin15D");
                    },
                    child: const Text('15D')),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(35, 20), primary: Colors.pink),
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin30D");
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
                      Navigator.pushNamed(context, "/bitcoin50D");
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
              title: const Text("Bitcoin"),
              subtitle: const Text('Valor Atual'),
              trailing: Text("R\$" + valorAtual.toString()),
            ),
            ListTile(
              title: const Text("Cap de mercado"),
              trailing: Text("+" + capMercado.toString() + "%"),
            ),
            ListTile(
              title: const Text("Valor mínimo"),
              trailing: Text("R\$" + valorMin.toString()),
            ),
            ListTile(
              title: const Text("Valor máximo"),
              trailing: Text("R\$" + valorMax.toString()),
            ),
            ButtonTheme(
              minWidth: 350.0,
              height: 50.0,
              child: RaisedButton(
                color: Colors.pink,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, "/conversao");
                },
                child: const Text("Converter moeda"),
              ),
            ),
          ],
        ),
      );
}
