import 'package:flutter/material.dart';

class Grafico extends StatefulWidget {
  const Grafico({Key? key}) : super(key: key);

  @override
  State<Grafico> createState() => ListagemCrypto();
}

class ListagemCrypto extends State<Grafico> {
  List<String> listagemMoedas = ["Ethereum", "Bitcoin", "Litecoin"];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text("Detalhes"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_circle_left_outlined),
            onPressed: () {},
          ),
        ),
        body: Column(
          children: <Widget>[
            const SizedBox(
              height: 30,
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
                " " + listagemMoedas[0],
                style:
                    const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                ' Informações',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 200,
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
                child: Text("Converter moeda"),
              ),
            ),
          ],
        ),
      );
}
