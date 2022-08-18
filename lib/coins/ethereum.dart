import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';
import 'package:flutter/material.dart';

class EthereumMain extends StatefulWidget {
  const EthereumMain({Key? key}) : super(key: key);

  @override
  State<EthereumMain> createState() => E5d();
}

class E5d extends State<EthereumMain> {
  final List<Feature> features = [
    Feature(
      title: "Ethereum",
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
                " Ethereum",
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
                      Navigator.pushNamed(context, "/ethereumMain");
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
                      Navigator.pushNamed(context, "/ethereum10D");
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
                      Navigator.pushNamed(context, "/ethereum15D");
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
                      Navigator.pushNamed(context, "/ethereum30D");
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
                      Navigator.pushNamed(context, "/ethereum50D");
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
              title: Text("Ethereum"),
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

class Ethereum10d extends StatefulWidget {
  const Ethereum10d({Key? key}) : super(key: key);

  @override
  State<Ethereum10d> createState() => E10d();
}

class E10d extends State<Ethereum10d> {
  final List<Feature> features = [
    Feature(
      title: "Ethereum",
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
                " Ethereum",
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
                      Navigator.pushNamed(context, "/ethereumMain");
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
                      Navigator.pushNamed(context, "/ethereum10D");
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
                      Navigator.pushNamed(context, "/ethereum15D");
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
                      Navigator.pushNamed(context, "/ethereum30D");
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
                      Navigator.pushNamed(context, "/ethereum50D");
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
              title: Text("Ethereum"),
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

class Ethereum15d extends StatefulWidget {
  const Ethereum15d({Key? key}) : super(key: key);

  @override
  State<Ethereum15d> createState() => E15d();
}

class E15d extends State<Ethereum15d> {
  final List<Feature> features = [
    Feature(
      title: "Ethereum",
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
                " Ethereum",
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
                      Navigator.pushNamed(context, "/ethereumMain");
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
                      Navigator.pushNamed(context, "/ethereum10D");
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
                      Navigator.pushNamed(context, "/ethereum15D");
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
                      Navigator.pushNamed(context, "/ethereum30D");
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
                      Navigator.pushNamed(context, "/ethereum50D");
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
              title: Text("Ethereum"),
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

class Ethereum30d extends StatefulWidget {
  const Ethereum30d({Key? key}) : super(key: key);

  @override
  State<Ethereum30d> createState() => E30d();
}

class E30d extends State<Ethereum30d> {
  final List<Feature> features = [
    Feature(
      title: "Ethereum",
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
                " Ethereum",
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
                      Navigator.pushNamed(context, "/ethereumMain");
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
                      Navigator.pushNamed(context, "/ethereum10D");
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
                      Navigator.pushNamed(context, "/ethereum15D");
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
                      Navigator.pushNamed(context, "/ethereum30D");
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
                      Navigator.pushNamed(context, "/ethereum50D");
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
              title: Text("Ethereum"),
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

class Ethereum50d extends StatefulWidget {
  const Ethereum50d({Key? key}) : super(key: key);

  @override
  State<Ethereum50d> createState() => E50d();
}

class E50d extends State<Ethereum50d> {
  final List<Feature> features = [
    Feature(
      title: "Ethereum",
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
                " Ethereum",
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
                      Navigator.pushNamed(context, "/ethereumMain");
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
                      Navigator.pushNamed(context, "/ethereum10D");
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
                      Navigator.pushNamed(context, "/ethereum15D");
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
                      Navigator.pushNamed(context, "/ethereum30D");
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
                      Navigator.pushNamed(context, "/ethereum50D");
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
              title: Text("Ethereum"),
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
