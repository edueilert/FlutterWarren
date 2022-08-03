import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const MyHomePage2());
  }
}

var long2 = double.parse('- - -');
bool selected = false;
double valorETH = 0;
double valorBTC = 0;
double valorLTC = 0;
double valorCarteira = valorETH + valorBTC + valorLTC;

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({key});

  @override
  State<MyHomePage2> createState() => MyHomePage();
}

ocultar({double ETH = 37.58, double BTC = 56.37, double LTC = 47.40}) {
  if (selected == true) {
    valorETH = ETH;
    valorBTC = BTC;
    valorLTC = LTC;
    valorCarteira = ETH + BTC + LTC;
  } else {
    valorCarteira = 0;
    valorBTC = 0;
    valorETH = 0;
    valorLTC = 0;
  }
}

class MyHomePage extends State<MyHomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                icon: Icon(
                    selected ? Icons.remove_red_eye : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    selected = !selected;
                    print(selected);
                    ocultar();
                  });
                },
              ),
            ],
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                ' US\$: ' + valorCarteira.toString(),
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              )),
          Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                ' +R\$ 100,00 (100% do CDI)',
                style: TextStyle(fontSize: 18),
              )),
          ListTile(
            title: Text('ETH'),
            isThreeLine: true,
            subtitle: Text('Etherum'),
            leading: Icon(Icons.trending_down),
            trailing: Text('US\$' + valorETH.toString()),
          ),
          ListTile(
            title: Text('BTC'),
            isThreeLine: true,
            subtitle: Text('Bitcoin'),
            leading: Icon(Icons.trending_down),
            trailing: Text('US\$' + valorBTC.toString()),
          ),
          ListTile(
            title: Text('LTC'),
            isThreeLine: true,
            subtitle: Text('Litecoin'),
            leading: Icon(Icons.trending_up),
            trailing: Text('US\$' + valorLTC.toString()),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_membership),
            label: 'Carteiras',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.equalizer),
            label: 'Movimentações',
          ),
        ],
        selectedItemColor: Colors.pink,
      ),
    );
  }
}

class WidgetWithState extends StatefulWidget {
  @override
  _WidgetWithStateState createState() => _WidgetWithStateState();
}

class _WidgetWithStateState extends State<WidgetWithState> {
  int counter = 0;

  increment() {
    setState(() {
      counter++;
    });
  }

  decrement() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        FlatButton(onPressed: increment, child: Text('Increment')),
        FlatButton(onPressed: decrement, child: Text('Decrement')),
        Text(counter.toString()),
      ],
    );
  }
}
