import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/grafico.dart';

bool selected = false;
double valorETH = 0;
double valorBTC = 0;
double valorLTC = 0;
double variacaoETH = 0;
double variacaoBTC = 0;
double variacaoLTC = 0;
double valorCDI = 0;
double valorCarteira = valorETH + valorBTC + valorLTC;

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({key});

  @override
  State<MyHomePage2> createState() => MyHomePage();
}

ocultar(
    {double ETH = 37.58,
    double BTC = 56.37,
    double LTC = 47.40,
    double vETH = 75,
    double vBTC = 75,
    double vLTC = 0.7,
    var CDI = double.parse}) {
  if (selected == true) {
    valorETH = ETH;
    valorBTC = BTC;
    valorLTC = LTC;
    valorCDI = (BTC + ETH + LTC) / 200;
    CDI = valorCDI.toStringAsFixed(2);
    valorCarteira = ETH + BTC + LTC;
    variacaoETH = vETH;
    variacaoBTC = vBTC;
    variacaoLTC = vLTC;
  } else {
    valorCarteira = 0;
    valorBTC = 0;
    valorETH = 0;
    valorLTC = 0;
    variacaoETH = 0;
    variacaoBTC = 0;
    variacaoLTC = 0;
    valorCDI = 0;
  }
}

class MyHomePage extends State<MyHomePage2> {
  Widget column() {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 30,
        ),
        Row(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                ' Carteira',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 170,
            ),
            IconButton(
              icon:
                  Icon(selected ? Icons.remove_red_eye : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  selected = !selected;
                  ocultar();
                });
              },
            ),
          ],
        ),
        Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              ' R\$: ' + valorCarteira.toString(),
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            )),
        Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              ' +R\$ ' + valorCDI.toStringAsFixed(2) + '(100% do CDI)',
              style: TextStyle(fontSize: 18),
            )),
        ListTile(
          title: Text('ETH'),
          isThreeLine: true,
          subtitle: Text('Etherum'),
          leading: Icon(Icons.trending_up),
          trailing: Column(
            children: [
              Text('R\$' + valorETH.toString()),
              Text("+" + variacaoETH.toString() + "%",
                  style: TextStyle(
                    backgroundColor: Color.fromARGB(255, 143, 250, 196),
                  )),
            ],
          ),
        ),
        ListTile(
          title: Text('BTC'),
          isThreeLine: true,
          subtitle: Text('Bitcoin'),
          leading: Icon(Icons.trending_up),
          trailing: Column(
            children: [
              Text('R\$' + valorBTC.toString()),
              Text("+" + variacaoBTC.toString() + "%",
                  style: TextStyle(
                    backgroundColor: Color.fromARGB(255, 143, 250, 196),
                  )),
            ],
          ),
        ),
        ListTile(
          title: Text('LTC'),
          isThreeLine: true,
          subtitle: Text('Litecoin'),
          leading: Icon(Icons.trending_down),
          trailing: Column(
            children: [
              Text('R\$' + valorLTC.toString()),
              Text("-" + variacaoLTC.toString() + "%",
                  style: TextStyle(
                    backgroundColor: Color.fromARGB(255, 255, 163, 163),
                  )),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: column(),
    );
  }
}
