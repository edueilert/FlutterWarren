// // ignore_for_file: unused_local_variable

// import 'package:flutter/widgets.dart';
// import 'package:myapp/models/coins_model.dart';

// class HomeController {
//   List<CoinsModel> coins;

//   final TextEditingController toText;
//   final TextEditingController fromText;

//   CoinsModel toCoins;
//   CoinsModel fromCoins;

//   HomeController({required this.toText, required this.fromText}) {
//     coins = CoinsModel.getCoins();
//     toCoins = coins[0];
//     fromCoins = coins[1];
//   }

//   void conversor() {
//     String text = toText.text;
//     double value = double.tryParse(text) ?? 1.0;
//     double returnValue = 0;

//     if (fromCoins.name == 'Ethereum') {
//       returnValue = value * toCoins.ethereum;
//     } else if (fromCoins.name == 'Litecoin') {
//       returnValue = value * toCoins.litecoin;
//     } else if (fromCoins.name == 'Bitcoin') {
//       returnValue = value * toCoins.bitcoin;
//     }
//     fromText.text = returnValue.toStringAsFixed(2);
//   }
// }
