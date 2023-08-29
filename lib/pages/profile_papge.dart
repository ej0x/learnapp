import 'package:flutter/material.dart';
import 'package:learnapp/core/constants.dart';
import 'package:learnapp/core/notifier.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/yeah.png'),
            radius: 60,
          ),
          SizedBox(
            height: kDouble20,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Flutter App'),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('info@E-corp.com'),
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: Text('E-Corp.com'),
          ),
        ],
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
