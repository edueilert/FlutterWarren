import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';
import 'package:flutter/material.dart';

class BitcoinMain extends StatefulWidget {
  const BitcoinMain({Key? key}) : super(key: key);

  @override
  State<BitcoinMain> createState() => B5d();
}

class B5d extends State<BitcoinMain> {
  final List<Feature> features = [
    Feature(
      title: "Bitcoin",
      color: Colors.pink,
      data: [0.03, 0.40, 0.85, 1.20, 1],
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
                '2,00R\$'
              ],
              showDescription: false,
              graphColor: Colors.black87,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 70,
                ),
                ButtonTheme(
                  minWidth: 10.0,
                  height: 5.0,
                  child: RaisedButton(
                    color: Colors.pink,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoinMain");
                    },
                    child: const Text(" 5D"),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ButtonTheme(
                  minWidth: 10.0,
                  height: 5.0,
                  child: RaisedButton(
                    color: Colors.pink,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin10D");
                    },
                    child: const Text("10D"),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ButtonTheme(
                  minWidth: 10.0,
                  height: 5.0,
                  child: RaisedButton(
                    color: Colors.pink,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin15D");
                    },
                    child: const Text("15D"),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ButtonTheme(
                  minWidth: 10.0,
                  height: 5.0,
                  child: RaisedButton(
                    color: Colors.pink,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin30D");
                    },
                    child: const Text("30D"),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ButtonTheme(
                  minWidth: 10.0,
                  height: 5.0,
                  child: RaisedButton(
                    color: Colors.pink,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin50D");
                    },
                    child: const Text("50D"),
                  ),
                ),
                const SizedBox(
                  width: 20,
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
            const ListTile(
              title: Text("Bitcoin"),
              subtitle: Text('Valor Atual'),
              trailing: Text("R\$20.000"),
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

class Bitcoin10d extends StatefulWidget {
  const Bitcoin10d({Key? key}) : super(key: key);

  @override
  State<Bitcoin10d> createState() => B10d();
}

class B10d extends State<Bitcoin10d> {
  final List<Feature> features = [
    Feature(
      title: "Bitcoin",
      color: Colors.pink,
      data: [0.30, 0.90, 0.80, 0.60, 0.45, 0.9],
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
                '2,00R\$'
              ],
              showDescription: false,
              graphColor: Colors.black87,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 70,
                ),
                ButtonTheme(
                  minWidth: 10.0,
                  height: 5.0,
                  child: RaisedButton(
                    color: Colors.pink,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoinMain");
                    },
                    child: const Text(" 5D"),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ButtonTheme(
                  minWidth: 10.0,
                  height: 5.0,
                  child: RaisedButton(
                    color: Colors.pink,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin10D");
                    },
                    child: const Text("10D"),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ButtonTheme(
                  minWidth: 10.0,
                  height: 5.0,
                  child: RaisedButton(
                    color: Colors.pink,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin15D");
                    },
                    child: const Text("15D"),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ButtonTheme(
                  minWidth: 10.0,
                  height: 5.0,
                  child: RaisedButton(
                    color: Colors.pink,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin30D");
                    },
                    child: const Text("30D"),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ButtonTheme(
                  minWidth: 10.0,
                  height: 5.0,
                  child: RaisedButton(
                    color: Colors.pink,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin50D");
                    },
                    child: const Text("50D"),
                  ),
                ),
                const SizedBox(
                  width: 20,
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
            const ListTile(
              title: Text("Bitcoin"),
              subtitle: Text('Valor Atual'),
              trailing: Text("R\$20.000"),
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

class Bitcoin15d extends StatefulWidget {
  const Bitcoin15d({Key? key}) : super(key: key);

  @override
  State<Bitcoin15d> createState() => B15d();
}

class B15d extends State<Bitcoin15d> {
  final List<Feature> features = [
    Feature(
      title: "Bitcoin",
      color: Colors.pink,
      data: [1, 0.7, 1.2, 0.8, 0.7, 0.6],
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
                '2,00R\$'
              ],
              showDescription: false,
              graphColor: Colors.black87,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 70,
                ),
                ButtonTheme(
                  minWidth: 10.0,
                  height: 5.0,
                  child: RaisedButton(
                    color: Colors.pink,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoinMain");
                    },
                    child: const Text(" 5D"),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ButtonTheme(
                  minWidth: 10.0,
                  height: 5.0,
                  child: RaisedButton(
                    color: Colors.pink,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin10D");
                    },
                    child: const Text("10D"),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ButtonTheme(
                  minWidth: 10.0,
                  height: 5.0,
                  child: RaisedButton(
                    color: Colors.pink,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin15D");
                    },
                    child: const Text("15D"),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ButtonTheme(
                  minWidth: 10.0,
                  height: 5.0,
                  child: RaisedButton(
                    color: Colors.pink,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin30D");
                    },
                    child: const Text("30D"),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ButtonTheme(
                  minWidth: 10.0,
                  height: 5.0,
                  child: RaisedButton(
                    color: Colors.pink,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin50D");
                    },
                    child: const Text("50D"),
                  ),
                ),
                const SizedBox(
                  width: 20,
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
            const ListTile(
              title: Text("Bitcoin"),
              subtitle: Text('Valor Atual'),
              trailing: Text("R\$20.000"),
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

class Bitcoin30d extends StatefulWidget {
  const Bitcoin30d({Key? key}) : super(key: key);

  @override
  State<Bitcoin30d> createState() => B30d();
}

class B30d extends State<Bitcoin30d> {
  final List<Feature> features = [
    Feature(
      title: "Bitcoin",
      color: Colors.pink,
      data: [0.7, 0.5, 0.8, 0.5, 1.1, 0.9],
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
                '2,00R\$'
              ],
              showDescription: false,
              graphColor: Colors.black87,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 70,
                ),
                ButtonTheme(
                  minWidth: 10.0,
                  height: 5.0,
                  child: RaisedButton(
                    color: Colors.pink,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoinMain");
                    },
                    child: const Text(" 5D"),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ButtonTheme(
                  minWidth: 10.0,
                  height: 5.0,
                  child: RaisedButton(
                    color: Colors.pink,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin10D");
                    },
                    child: const Text("10D"),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ButtonTheme(
                  minWidth: 10.0,
                  height: 5.0,
                  child: RaisedButton(
                    color: Colors.pink,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin15D");
                    },
                    child: const Text("15D"),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ButtonTheme(
                  minWidth: 10.0,
                  height: 5.0,
                  child: RaisedButton(
                    color: Colors.pink,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin30D");
                    },
                    child: const Text("30D"),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ButtonTheme(
                  minWidth: 10.0,
                  height: 5.0,
                  child: RaisedButton(
                    color: Colors.pink,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin50D");
                    },
                    child: const Text("50D"),
                  ),
                ),
                const SizedBox(
                  width: 20,
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
            const ListTile(
              title: Text("Bitcoin"),
              subtitle: Text('Valor Atual'),
              trailing: Text("R\$20.000"),
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

class Bitcoin50d extends StatefulWidget {
  const Bitcoin50d({Key? key}) : super(key: key);

  @override
  State<Bitcoin50d> createState() => B50d();
}

class B50d extends State<Bitcoin50d> {
  final List<Feature> features = [
    Feature(
      title: "Bitcoin",
      color: Colors.pink,
      data: [1, 0.9, 1.2, 0.7, 1.1, 1],
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
                '2,00R\$'
              ],
              showDescription: false,
              graphColor: Colors.black87,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 70,
                ),
                ButtonTheme(
                  minWidth: 10.0,
                  height: 5.0,
                  child: RaisedButton(
                    color: Colors.pink,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoinMain");
                    },
                    child: const Text(" 5D"),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ButtonTheme(
                  minWidth: 10.0,
                  height: 5.0,
                  child: RaisedButton(
                    color: Colors.pink,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin10D");
                    },
                    child: const Text("10D"),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ButtonTheme(
                  minWidth: 10.0,
                  height: 5.0,
                  child: RaisedButton(
                    color: Colors.pink,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin15D");
                    },
                    child: const Text("15D"),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ButtonTheme(
                  minWidth: 10.0,
                  height: 5.0,
                  child: RaisedButton(
                    color: Colors.pink,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin30D");
                    },
                    child: const Text("30D"),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ButtonTheme(
                  minWidth: 10.0,
                  height: 5.0,
                  child: RaisedButton(
                    color: Colors.pink,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, "/bitcoin50D");
                    },
                    child: const Text("50D"),
                  ),
                ),
                const SizedBox(
                  width: 20,
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
            const ListTile(
              title: Text("Bitcoin"),
              subtitle: Text('Valor Atual'),
              trailing: Text("R\$20.000"),
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
