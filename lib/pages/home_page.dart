import 'package:flutter/material.dart';
import 'package:learnapp/widget/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(title: 'Rocket'),
            Row(
              children: [
                Expanded(
                    child: CardWidget(
                  title: 'Rocket',
                )),
                Expanded(
                    child: CardWidget(
                  title: 'Rocket',
                )),
              ],
            ),
            CardWidget(
              title: 'Rocket',
            )
          ],
        ),
      ),
    );
  }
}
