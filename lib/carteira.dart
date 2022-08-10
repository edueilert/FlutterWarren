import 'package:flutter/material.dart';

class MyHomePageWidget extends StatefulWidget {
  const MyHomePageWidget({Key? key}) : super(key: key);

  @override
  State<MyHomePageWidget> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePageWidget> {
  bool selected = true;
  double eth = 37.58;
  double btc = 56.37;
  double ltc = 47.40;
  double vETH = 75;
  double vBTC = 75;
  double vLTC = 0.7;
  var cdi = double.parse;

  Widget primeiraPagina() {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 30,
        ),
        Row(
          children: <Widget>[
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                ' Carteira',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              width: 170,
            ),
            IconButton(
              icon:
                  Icon(selected ? Icons.remove_red_eye : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  selected = !selected;
                });
              },
            ),
          ],
        ),
        Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              children: [
                const Text(
                  ' R\$: ',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                Visibility(
                  child: Text(
                    (eth + btc + ltc).toStringAsFixed(2),
                    style: const TextStyle(
                        fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  visible: selected,
                ),
              ],
            )),
        Align(
          alignment: Alignment.bottomLeft,
          child: Row(
            children: [
              const Text('   +R\$ '),
              Visibility(
                child: Text(
                  (eth + ltc + btc / 200).toStringAsFixed(2),
                  style: const TextStyle(fontSize: 18),
                ),
                visible: selected,
              ),
              const Text(' (100% de cdi)'),
            ],
          ),
        ),
        ListTile(
          title: const Text('eth'),
          isThreeLine: true,
          subtitle: const Text('Etherum'),
          leading: const Icon(Icons.trending_up),
          trailing: SizedBox(
            width: 79,
            child: Column(
              children: [
                Row(children: [
                  const Text('R\$ '),
                  Visibility(
                    child: Text(
                      eth.toStringAsFixed(2) + "%",
                    ),
                    visible: selected,
                  ),
                ]),
                Visibility(
                  child: Text(
                    "+" + vETH.toString() + "%",
                    style: const TextStyle(
                      backgroundColor: Color.fromARGB(255, 143, 250, 196),
                    ),
                  ),
                  visible: selected,
                ),
              ],
            ),
          ),
        ),
        ListTile(
          title: const Text('btc'),
          isThreeLine: true,
          subtitle: const Text('Bitcoin'),
          leading: const Icon(Icons.trending_up),
          trailing: SizedBox(
            width: 79,
            child: Column(
              children: [
                Row(children: [
                  const Text('R\$ '),
                  Visibility(
                    child: Text(
                      btc.toStringAsFixed(2) + "%",
                    ),
                    visible: selected,
                  ),
                ]),
                Visibility(
                  child: Text(
                    "+" + vBTC.toString() + "%",
                    style: const TextStyle(
                      backgroundColor: Color.fromARGB(255, 143, 250, 196),
                    ),
                  ),
                  visible: selected,
                ),
              ],
            ),
          ),
        ),
        ListTile(
          title: const Text('ltc'),
          isThreeLine: true,
          subtitle: const Text('Litecoin'),
          leading: const Icon(Icons.trending_down),
          trailing: SizedBox(
            width: 79,
            child: Column(
              children: [
                Row(children: [
                  const Text('R\$ '),
                  Visibility(
                    child: Text(
                      ltc.toStringAsFixed(2) + "%",
                    ),
                    visible: selected,
                  ),
                ]),
                Visibility(
                  child: Text(
                    "+" + vLTC.toString() + "%",
                    style: const TextStyle(
                      backgroundColor: Color.fromARGB(255, 250, 143, 143),
                    ),
                  ),
                  visible: selected,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: primeiraPagina(),
    );
  }
}
