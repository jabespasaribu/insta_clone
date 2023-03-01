import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insta_clone_clean_arch/features/presentation/widgets/theme.dart';

import 'features/presentation/pages/credentials/sign_in.dart';

void main() {
  runApp(const CleanArch());
}

class CleanArch extends StatelessWidget {
  const CleanArch({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MaterialApp(
          title: 'Instagram Clone',

          debugShowCheckedModeBanner: false,
          // theme: ThemeData(
          //   primarySwatch: Colors.blue,
          // ),
          theme: ThemeData(fontFamily: 'Open Sans'),
          darkTheme: SingularThemeData.dark(),
          home: child,
        );
      },
      child: const SignInPage(),
    );
  }
}
