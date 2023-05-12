import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sport_shop/screens/welcome.dart';

import '../compoments/bezier_card.dart';
import '../compoments/custom_flat_button.dart';
import '../compoments/custom_textfield.dart';
import '../compoments/social_button.dart';
import '../constants.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const WelcomePageView()));
              },
              icon: const Icon(Icons.arrow_back, color: Colors.black)),
        ),
        body: SizedBox(
          height: Get.height,
          child: Stack(
            children: <Widget>[
              Positioned(
                  top: -Get.height * .15,
                  right: -Get.width * .4,
                  child: const BezierContainer()),
              SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: Get.height * .2),
                      Center(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                              text: 'l',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffe46b10)),
                              children: [
                                TextSpan(
                                  text: 'og',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 30),
                                ),
                                TextSpan(
                                  text: 'in',
                                  style: TextStyle(
                                      color: Color(0xffe46b10), fontSize: 30),
                                ),
                              ]),
                        ),
                      ),
                      const SizedBox(height: 50),
                      Text(
                        "Email",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      CustomTextField(
                        isPassword: false,
                        hintText: 'Email Address',
                        validator: (value) {
                          if (!value!.isEmail) {
                            return 'Please enter valid email address';
                          } else if (value.isEmpty) {
                            return 'Please enter your email address';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Password",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      CustomTextField(
                        isPassword: true,
                        hintText: 'Password',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your password';
                          } else if (value.length < 6) {
                            return 'Your Password length must be greater than 6';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      CustomFlatButton(
                          text: 'Login',
                          color: MyColors.kPrimaryColor,
                          textColor: Colors.white,
                          onTap: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                          }),
                      Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: const Text('Forgot Password ?',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                          )),
                      const Row(
                        children: [
                          SizedBox(width: 20),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Divider(
                                thickness: 1,
                              ),
                            ),
                          ),
                          Text('or'),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Divider(
                                thickness: 1,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const CustomSocialButton(),
                      SizedBox(height: Get.height * .055),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
