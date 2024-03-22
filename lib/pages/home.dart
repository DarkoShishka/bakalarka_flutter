import 'package:bakalarka_flutter/calulations/Stock.dart';
import 'package:flutter/material.dart';

import '../calulations/calculations.dart';
import '../ui_tools.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> list = [
    StockUI(
      text: "Stock1",
    ),
    StockUI(
      text: "Stock2",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: const Text(
          "Bakalarka",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/settings');
          },
          icon: const Icon(Icons.menu),
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: list,
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Money:"),
                const SizedBox(
                  width: 150,
                  height: 30,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "150 for example"),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _showCalculationDetails(context);
                  },
                  child: const Text("Calculate"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showCalculationDetails(BuildContext context) async {
    if (list.isNotEmpty && list[0] is StockUI && list[1] is StockUI) {
      StockUI stockUIOne = list[0] as StockUI;
      StockUI stockUITwo = list[1] as StockUI;

      if (arbitrage(stockConverter(stockUIOne), stockConverter(stockUITwo))) {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return const BottomModal();
          },
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Arbitrage does not exist.'),
            duration: Duration(seconds: 3), // Adjust the duration as needed
          ),
        );
        return;
      }
    } else {
      // Handle the case where there are not enough items in the list or items are not of type StockUI
    }
  }


  Stock stockConverter(StockUI stockUI) {
    double priceRightNow = double.parse(stockUI.priceRightNow1);
    double priceSituationOne = double.parse(stockUI.priceSituationOne1);
    double priceSituationTwo = double.parse(stockUI.priceSituationTwo1);

    return Stock(priceRightNow, priceSituationOne, priceSituationTwo, 0);
  }
}
