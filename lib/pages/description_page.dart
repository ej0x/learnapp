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
  double fontSizecustom = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.box.title),
        //backgroundColor: Colors.amberAccent,
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        //   icon: const Icon(Icons.dangerous),
        // ),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Snackbar"),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            icon: const Icon(Icons.info),
          ),
        ],
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
                    onPressed: () {
                      setState(() {
                        fontSizecustom = 25;
                      });
                    },
                    child: const Text('Small Title'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        fontSizecustom = 35;
                      });
                    },
                    child: const Text('Medium Title'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        fontSizecustom = 50;
                      });
                    },
                    child: const Text('Large Title'),
                  ),
                  FilledButton(
                    onPressed: () {
                      setState(() {
                        fontSizecustom = 200;
                      });
                    },
                    // style: ElevatedButton.styleFrom(
                    //   backgroundColor: Colors.black,
                    //   foregroundColor: Colors.white,
                    // ),
                    child: const Text('Huge Title'),
                  ),
                ],
              ),
              FittedBox(
                child: Text(
                  widget.box.title,
                  style: TextStyle(
                      fontSize: fontSizecustom, fontWeight: FontWeight.bold),
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
