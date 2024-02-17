import 'package:flutter/material.dart';

class AppColors {
  static const Color mainColor =
      Color(0xFF173944); // Backgrounds, main elements - 60%
  static const Color secondaryColor =
      Color(0xFFfaf3e7); // For 2nd level elements, text - 30%
  static const Color accentColor =
      Color(0xFFbb2c2c); // For CTAs and accent touches - 10%
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

class Stock extends StatelessWidget {
  const Stock({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Dismissible(
        key: const ValueKey("Text"),
        background: Container(
          color: Colors.blue,
          child: const Center(
            child: Icon(
              Icons.delete,
              color: Colors.white,
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Stock name",
                style: TextStyle(fontSize: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text("Price right now"),
                    flex: 1,
                  ),
                  Expanded(
                      flex: 2,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "15 for example"),
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Price if situation 1 happens"),
                  SizedBox(
                    width: 150,
                    height: 30,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "10 for example"),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Price if situation 2 happens"),
                  SizedBox(
                    width: 150,
                    height: 30,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "20 for example"),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
