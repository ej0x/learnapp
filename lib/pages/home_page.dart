import 'package:flutter/material.dart';
import 'package:learnapp/class/item_class.dart';
import 'package:learnapp/widget/card_widget.dart';
import 'package:learnapp/core/notifier.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dev Tips"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Row(
            //   children: [
            //     Expanded(
            //       child: CardWidget(
            //         box: ItemClass(
            //             title: 'Travel', imagePath: 'images/linux.png'),
            //       ),
            //     ),
            //     Expanded(
            //       child: CardWidget(
            //         box: ItemClass(
            //             title: 'Space', imagePath: 'images/linux.png'),
            //       ),
            //     ),
            //   ],
            // ),
            CardWidget(
              box: ItemClass(title: 'Android', imagePath: 'images/Android.png'),
            ),
            CardWidget(
              box: ItemClass(title: 'Windows', imagePath: 'images/Windows.png'),
            ),
            CardWidget(
              box: ItemClass(title: 'macOS', imagePath: 'images/macOS.png'),
            ),
            CardWidget(
              box: ItemClass(title: 'Linux', imagePath: 'images/lin.png'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkModeNotfier.value = !isDarkModeNotfier.value;
        },
        child: ValueListenableBuilder(
          valueListenable: isDarkModeNotfier,
          builder: (context, isDark, child) {
            if (!isDark) {
              return const Icon(Icons.dark_mode);
            } else {
              return const Icon(Icons.light_mode);
            }
          },
        ),
      ),
    );
  }
}
