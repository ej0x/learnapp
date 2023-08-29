import 'package:flutter/material.dart';
import 'package:learnapp/core/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
      ),
      body: const Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/user.png'),
            radius: 40,
          ),
          SizedBox(
            height: kDouble20,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Ejas'),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('ejas01@outlook.com'),
          ),
          // ListTile(
          //   leading: Icon(Icons.web),
          //   title: Text('E-Corp.com'),
          // ),
          // ListTile(
          //   leading: Icon(Icons.feedback),
          //   title: Text('ejas01@outlook.com'),
          // ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     isDarkModeNotfier.value = !isDarkModeNotfier.value;
      //   },
      //   child: ValueListenableBuilder(
      //     valueListenable: isDarkModeNotfier,
      //     builder: (context, isDark, child) {
      //       if (!isDark) {
      //         return const Icon(Icons.dark_mode);
      //       } else {
      //         return const Icon(Icons.light_mode);
      //       }
      //     },
      //   ),
      // ),
    );
  }
}
