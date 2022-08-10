import 'package:flutter/cupertino.dart';

class Grafico extends StatefulWidget {
  const Grafico({Key? key}) : super(key: key);

  @override
  State<Grafico> createState() => Grafico2();
}

class Grafico2 extends State<Grafico> {
  @override
  Widget build(BuildContext context) {
    return const Text('chegou');
  }
}
