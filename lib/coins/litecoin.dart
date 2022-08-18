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
  final List<Feature> features = [
    Feature(
      title: "Litecoin",
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
                      Navigator.pushNamed(context, "/litecoinMain");
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
                      Navigator.pushNamed(context, "/litecoin10D");
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
                      Navigator.pushNamed(context, "/litecoin15D");
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
                      Navigator.pushNamed(context, "/litecoin30D");
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
                      Navigator.pushNamed(context, "/litecoin50D");
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
              title: Text("Litecoin"),
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

class Litecoin10d extends StatefulWidget {
  const Litecoin10d({Key? key}) : super(key: key);

  @override
  State<Litecoin10d> createState() => L10d();
}

class L10d extends State<Litecoin10d> {
  final List<Feature> features = [
    Feature(
      title: "Litecoin",
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
                      Navigator.pushNamed(context, "/litecoinMain");
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
                      Navigator.pushNamed(context, "/litecoin10D");
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
                      Navigator.pushNamed(context, "/litecoin15D");
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
                      Navigator.pushNamed(context, "/litecoin30D");
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
                      Navigator.pushNamed(context, "/litecoin50D");
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
              title: Text("Litecoin"),
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

class Litecoin15d extends StatefulWidget {
  const Litecoin15d({Key? key}) : super(key: key);

  @override
  State<Litecoin15d> createState() => L15d();
}

class L15d extends State<Litecoin15d> {
  final List<Feature> features = [
    Feature(
      title: "Litecoin",
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
                      Navigator.pushNamed(context, "/litecoinMain");
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
                      Navigator.pushNamed(context, "/litecoin10D");
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
                      Navigator.pushNamed(context, "/litecoin15D");
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
                      Navigator.pushNamed(context, "/litecoin30D");
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
                      Navigator.pushNamed(context, "/litecoin50D");
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
              title: Text("Litecoin"),
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

class Litecoin30d extends StatefulWidget {
  const Litecoin30d({Key? key}) : super(key: key);

  @override
  State<Litecoin30d> createState() => L30d();
}

class L30d extends State<Litecoin30d> {
  final List<Feature> features = [
    Feature(
      title: "Litecoin",
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
                      Navigator.pushNamed(context, "/litecoinMain");
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
                      Navigator.pushNamed(context, "/litecoin10D");
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
                      Navigator.pushNamed(context, "/litecoin15D");
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
                      Navigator.pushNamed(context, "/litecoin30D");
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
                      Navigator.pushNamed(context, "/litecoin50D");
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
              title: Text("Litecoin"),
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

class Litecoin50d extends StatefulWidget {
  const Litecoin50d({Key? key}) : super(key: key);

  @override
  State<Litecoin50d> createState() => L50d();
}

class L50d extends State<Litecoin50d> {
  final List<Feature> features = [
    Feature(
      title: "Litecoin",
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
                      Navigator.pushNamed(context, "/litecoinMain");
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
                      Navigator.pushNamed(context, "/litecoin10D");
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
                      Navigator.pushNamed(context, "/litecoin15D");
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
                      Navigator.pushNamed(context, "/litecoin30D");
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
                      Navigator.pushNamed(context, "/litecoin50D");
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
              title: Text("Litecoin"),
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
