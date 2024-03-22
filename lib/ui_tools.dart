import 'package:flutter/material.dart';
import 'package:bakalarka_flutter/l10n/l10n.dart';

class AppColors {
  static const Color mainColor = Color(0xFF173944); // Backgrounds, main elements - 60%
  static const Color secondaryColor = Color(0xFFfaf3e7); // For 2nd level elements, text - 30%
  static const Color accentColor = Color(0xFFbb2c2c); // For CTAs and accent touches - 10%
}

class BakalarkaText extends StatelessWidget {
  const BakalarkaText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: AppColors.secondaryColor,
      ),
    );
  }
}

class StockUI extends StatefulWidget {
  StockUI({Key? key, required this.text}) : super(key: key);

  final String text;
  String priceRightNow1 = "0.0";
  String priceSituationOne1 = "0.0";
  String priceSituationTwo1 = "0.0";

  @override
  _StockState createState() => _StockState();

  // Callback function to receive data
  void onDataReceived({
    required String priceRightNow,
    required String priceSituationOne,
    required String priceSituationTwo,
  }) {
    // Handle the received data here
    priceRightNow1 = priceRightNow;
    priceSituationOne1 = priceSituationOne;
    priceSituationTwo1 = priceSituationTwo;
    print('Price Right Now: $priceRightNow');
    print('Price Situation One: $priceSituationOne');
    print('Price Situation Two: $priceSituationTwo');
  }
}

class _StockState extends State<StockUI> {
  int stockCount = 0;
  late final TextEditingController priceRightNowController;
  late final TextEditingController priceSituationOneController;
  late final TextEditingController priceSituationTwoController;

  @override
  void initState() {
    super.initState();
    // Initialize controllers
    priceRightNowController = TextEditingController();
    priceSituationOneController = TextEditingController();
    priceSituationTwoController = TextEditingController();
  }

  @override
  void dispose() {
    // Dispose controllers
    priceRightNowController.dispose();
    priceSituationOneController.dispose();
    priceSituationTwoController.dispose();
    super.dispose();
  }

  // Callback function to pass data to the parent widget
  void _passDataToParent() {
    final priceRightNow = priceRightNowController.text;
    final priceSituationOne = priceSituationOneController.text;
    final priceSituationTwo = priceSituationTwoController.text;
    widget.onDataReceived(
      priceRightNow: priceRightNow,
      priceSituationOne: priceSituationOne,
      priceSituationTwo: priceSituationTwo,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Stock name",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(translation(context).price_right_now),
                SizedBox(
                  width: 150,
                  height: 30,
                  child: TextField(
                      onChanged: (value) {
                        _passDataToParent();
                      },
                    controller: priceRightNowController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "15 for example"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(translation(context).price_situation_one),
                SizedBox(
                  width: 150,
                  height: 30,
                  child: TextField(
                    onChanged: (value) {
                      _passDataToParent();
                    },
                    controller: priceSituationOneController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "10 for example"),
                  ),
                )
              ],
            ),
            const SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(translation(context).price_situation_two),
                SizedBox(
                  width: 150,
                  height: 30,
                  child: TextField(
                    onChanged: (value) {
                      _passDataToParent();
                    },
                    controller: priceSituationTwoController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "20 for example"),
                  ),
                )
              ],
            ),
            const SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      stockCount--;
                    });
                    _passDataToParent(); // Call the callback to pass data
                  },
                  child: const Text("-"),
                ),
                const SizedBox(width: 10,),
                Text("Stock count: $stockCount"),
                const SizedBox(width: 10,),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      stockCount++;
                    });
                    _passDataToParent(); // Call the callback to pass data
                  },
                  child: const Text("+"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



class BottomModal extends StatelessWidget {
  const BottomModal({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 600,
      width: 400,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Text(
                  'Calculation Details',
                  style:
                  TextStyle(fontSize: 34.00, fontWeight: FontWeight.bold),
                )),
            Divider(),
            Text(
              'This moment',
              style:
              TextStyle(fontSize: 24.00, fontWeight: FontWeight.normal),
            ),
            // Add your calculation details here
          ],
        ),
      ),
    );
  }

}