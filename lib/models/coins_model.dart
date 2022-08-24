class CoinsModel {
  final String name;
  final double ethereum;
  final double bitcoin;
  final double litecoin;

  CoinsModel(
      {required this.name,
      required this.ethereum,
      required this.bitcoin,
      required this.litecoin});

  static List<CoinsModel> getCoins() {
    return <CoinsModel>[
      CoinsModel(
          name: "Ethereum", ethereum: 1, bitcoin: 0.077, litecoin: 29.39),
      CoinsModel(
          name: "Bitcoin", ethereum: 12.97, bitcoin: 1, litecoin: 382.02),
      CoinsModel(
          name: "Litecoin", ethereum: 0.034, bitcoin: 0.0026, litecoin: 1),
    ];
  }
}
