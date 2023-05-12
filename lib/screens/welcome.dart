import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sport_shop/screens/register.dart';

import '../compoments/custom_flat_button.dart';
import '../constants.dart';
import 'login.dart';

class WelcomePageView extends StatelessWidget {
  const WelcomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'w',
                    style: GoogleFonts.portLligatSans(
                      textStyle: Theme.of(context).textTheme.headline1,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                    children: const [
                      TextSpan(
                        text: 'el',
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                      TextSpan(
                        text: 'come',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ])),
            const SizedBox(height: 40),
            Text(
              'Quick login with Touch ID',
              style: GoogleFonts.poppins(color: Colors.white, fontSize: 17),
            ),
            const SizedBox(height: 20),
            const Icon(Icons.fingerprint, size: 90, color: Colors.white),
            const SizedBox(height: 20),
            Text(
              'Touch ID',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 15,
                decoration: TextDecoration.underline,
              ),
            ),
            const Spacer(),
            CustomFlatButton(
                text: 'Login',
                color: MyColors.kPrimaryColor,
                textColor: Colors.white,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                }),
            const SizedBox(height: 20),
            CustomFlatButton(
                text: 'Register',
                color: Colors.white,
                textColor: MyColors.kPrimaryColor,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                  // Get.to(() => SignUpView());
                }),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}