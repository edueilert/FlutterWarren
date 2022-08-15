// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Ethereum extends StatefulWidget {
  const Ethereum({Key? key}) : super(key: key);

  @override
  State<Ethereum> createState() => ListagemCrypto();
}

class ListagemCrypto extends State<Ethereum> {
  final List<Tempo> chartData = [
    Tempo(5, 0.2),
    Tempo(10, 0.5),
    Tempo(15, 1.0),
    Tempo(30, 0.8),
    Tempo(50, 1.5),
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
            SfCartesianChart(series: <ChartSeries>[
              // Renders line chart
              LineSeries<Tempo, int>(
                  dataSource: chartData,
                  xValueMapper: (Tempo variacao, _) => variacao.dia,
                  yValueMapper: (Tempo variacao, _) => variacao.variacao)
            ]),
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

class Tempo {
  Tempo(this.dia, this.variacao);
  final int dia;
  final double variacao;
}
