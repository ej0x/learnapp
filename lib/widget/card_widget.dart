import 'package:flutter/material.dart';
import 'package:learnapp/core/constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          padding: const EdgeInsets.all(8.0),
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: kDouble5),
              Image.asset('images/rocket.png'),
              const Text(
                "Title",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text("Description"),
              const SizedBox(height: kDouble10),
            ],
          )),
    );
  }
}
