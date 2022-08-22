import 'package:flutter/material.dart';
import 'package:myapp/coins/bitcoin.dart';
import 'package:myapp/coins/ethereum.dart';
import 'package:myapp/coins/litecoin.dart';
import 'package:myapp/conversao.dart';
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
        '/ethereumMain': (context) => const EthereumMain(),
        '/ethereum10D': (context) => const Ethereum10d(),
        '/ethereum15D': (context) => const Ethereum15d(),
        '/ethereum30D': (context) => const Ethereum30d(),
        '/ethereum50D': (context) => const Ethereum50d(),
        '/bitcoinMain': (context) => const BitcoinMain(),
        '/bitcoin10D': (context) => const Bitcoin10d(),
        '/bitcoin15D': (context) => const Bitcoin15d(),
        '/bitcoin30D': (context) => const Bitcoin30d(),
        '/bitcoin50D': (context) => const Bitcoin50d(),
        '/litecoinMain': (context) => const LitecoinMain(),
        '/litecoin10D': (context) => const Litecoin10d(),
        '/litecoin15D': (context) => const Litecoin15d(),
        '/litecoin30D': (context) => const Litecoin30d(),
        '/litecoin50D': (context) => const Litecoin50d(),
        '/conversao': (context) => const Conversao()
      },
    );
  }
}
