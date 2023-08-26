import 'package:flutter/material.dart';
import 'package:learnapp/class/item_class.dart';
import 'package:learnapp/core/constants.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({
    super.key,
    required this.box,
  });

  final ItemClass box;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.box.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDouble10),
          child: Column(
            children: [
              Image.asset(widget.box.imagePath),
              Wrap(
                spacing: kDouble10,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('Small Title'),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('Medium Title'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Large Title'),
                  ),
                  FilledButton(
                    onPressed: () {},
                    child: const Text('Huge Title'),
                  ),
                ],
              ),
              FittedBox(
                child: Text(
                  widget.box.title,
                  style: const TextStyle(
                      fontSize: 200, fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                loremDescription,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: kDouble10),
              const Text(
                loremDescription,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
