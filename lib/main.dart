import 'package:flutter/material.dart';
import 'package:myapp/grafico.dart';
import 'package:myapp/navbar.dart';

void main() => runApp(const NavBar());

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: const MyStatefulWidget(),
      initialRoute: "/",
      routes: {
        '/grafico': (context) => const Grafico(),
      },
    );
  }
}
