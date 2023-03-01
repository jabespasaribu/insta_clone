import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_clone_clean_arch/features/presentation/widgets/form_container_widget.dart';

import '../../../core.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/instagram-text.svg',
                color: primaryColor,
              ),

              sizeVer(20),

              //
              SizedBox(
                width: width,
                child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      elevation: 2,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: blueColor,
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Entypo.facebook_squared,
                      color: primaryColor,
                    ),
                    label: const Text('Continue with FB')),
              ),

              sizeVer(20),

              //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: SizedBox(
                      width: width,
                      child: const Divider(
                        color: secondaryColor,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'OR',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: width,
                      child: const Divider(
                        color: secondaryColor,
                      ),
                    ),
                  ),
                ],
              ),

              sizeVer(20),

              //
              const FormContainerWidget(
                hintText: 'Email',
              ),

              sizeVer(20),

              // const CustomTFF(
              //   hintText: 'Password',
              // ),

              const FormContainerWidget(
                hintText: 'Password',
                isPasswordField: true,
              ),

              sizeVer(20),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {}, child: const Text('Forgot Password ?')),
              ),

              sizeVer(20),

              ElevatedButton(onPressed: () {}, child: const Text('Log in'))
            ],
          ),
        ),
      ),
    );
  }
}
