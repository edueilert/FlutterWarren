import 'package:flutter/material.dart';
import 'package:myapp/coins/bitcoin.dart';
import 'package:myapp/coins/ethereum.dart';
import 'package:myapp/coins/litecoin.dart';
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
        '/ethereum': (context) => const Ethereum(),
        '/bitcoin': (context) => const Bitcoin(),
        '/litecoin': (context) => const Litecoin(),
        '/litecoin5D': (context) => const Litecoin5d(),
      },
    );
  }
}
