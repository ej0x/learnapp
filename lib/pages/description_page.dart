import 'package:flutter/material.dart';
import 'package:learnapp/class/item_class.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({
    super.key,
    required this.box,
  });

  final ItemClass box;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(box.title),
      ),
    );
  }
}
