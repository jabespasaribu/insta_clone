import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:insta_clone_clean_arch/features/presentation/pages/credentials/sign_in.dart';
import 'package:insta_clone_clean_arch/features/presentation/widgets/button_container_widget.dart';
import 'package:insta_clone_clean_arch/features/presentation/widgets/form_container_widget.dart';

import '../../../core.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              sizeVer(height * .1),

              SvgPicture.asset(
                'assets/instagram-text.svg',
                color: primaryColor,
              ),

              sizeVer(20),

              Text(
                'Sign up to see photos and videos from your friends.',
                textAlign: TextAlign.center,
                style: boldStyle(fontSize: 14),
              ),

              sizeVer(20),

              ButtonContainerWidget(
                isIconed: true,
                icon: Entypo.facebook_squared,
                text: 'Continue with Facebook',
                onTapListener: () {
                  print('....with FB ....');
                },
              ),

              sizeVer(10),

              Center(
                child: Stack(
                  children: [
                    Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: secondaryColor),
                        child: SvgPicture.asset('assets/person.svg')),
                    const Positioned(
                      right: 0,
                      bottom: 0,
                      child: Icon(
                        Entypo.camera,
                        color: blueColor,
                      ),
                    )
                  ],
                ),
              ),

              sizeVer(10),

              // OR
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

              sizeVer(10),

              const FormContainerWidget(
                hintText: 'Fullname',
              ),

              sizeVer(10),

              const FormContainerWidget(
                hintText: 'Username',
              ),

              sizeVer(10),

              const FormContainerWidget(
                hintText: 'Password',
                isPasswordField: true,
              ),

              sizeVer(10),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {
                      print('....Forgot button pressed....');
                    },
                    child: const Text('Forgot Password ?')),
              ),

              sizeVer(20),

              ButtonContainerWidget(
                onTapListener: () {
                  print('....Log in button pressed....');
                },
                text: 'Log in',
              ),

              sizeVer(20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Have an account ? "),
                  InkWell(
                    onTap: () {
                      print('....Log in button pressed....');
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignInPage(),
                          ),
                          (route) => false);
                    },
                    child: Text(
                      "Log in",
                      style: regularStyle(color: blueColor),
                    ),
                  ),
                ],
              ),

              const Spacer(),

              Divider(
                thickness: 1,
                color: secondaryColor.withOpacity(.5),
              ),

              sizeVer(20),

              const Text('from'),

              SvgPicture.asset(
                'assets/meta.svg',
                color: blueColor,
                height: 25,
              )
            ],
          ),
        ),
      ),
    );
  }
}
