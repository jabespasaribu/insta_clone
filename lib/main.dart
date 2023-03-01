import 'package:flutter/material.dart';

import 'features/presentation/pages/credentials/sign_in.dart';

void main() {
  runApp(const CleanArch());
}

class CleanArch extends StatelessWidget {
  const CleanArch({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      darkTheme: ThemeData.dark(),
      home: const SignInPage(),
    );
  }
}
