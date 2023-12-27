import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio_web/screens/widgets/auth_text_from_field.dart';
import 'package:portfolio_web/screens/widgets/social_widget.dart';

import '../../logic/auth_controller.dart';
import '../../servises/themes.dart';

class LoginCard extends StatelessWidget {
  final double cardWidth;

  LoginCard({required this.cardWidth});

  List<String> imagePaths = [
    "assets/images/google-fill-svgrepo-com.svg",
    "assets/images/facebook-svgrepo-com.svg",
    "assets/images/github-svgrepo-com.svg",
    "assets/images/linkedin-161-svgrepo-com.svg"
  ];
  TextEditingController textEditingController1 = TextEditingController();
  final controller = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(30.0), // Adjust the radius as needed
      ),
      elevation: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // signIn info filling and auth methods
          Container(
            width: cardWidth * .445,
            child: Column(
              //add sign in  formfields and buttons and auth methods
              crossAxisAlignment: CrossAxisAlignment.center,
              //add sign in  formfields and buttons and auth methods
              children: [
                SizedBox(
                  height: 55,
                ),
                const Text(
                  "sign in",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 50,
                  width: cardWidth * .25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        4,
                        (index) => SocialWidget(
                              imagePath: imagePaths[index],
                            )),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                const Text(
                  "or use your email and password",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto'),
                ),
                const SizedBox(
                  height: 12,
                ),
                AuthTextFromField(
                    controller: textEditingController1,
                    obscureText: false,
                    validator: (validator) {},
                    hintText: "Email",
                    textInputType: TextInputType.emailAddress,
                    suffixIcon: SizedBox()),
                const SizedBox(
                  height: 12,
                ),
                AuthTextFromField(
                    controller: textEditingController1,
                    obscureText: false,
                    validator: (validator) {},
                    hintText: "Email",
                    textInputType: TextInputType.emailAddress,
                    suffixIcon: const Icon(
                      Icons.remove_red_eye,
                      color: PARAGRAPH,
                    )),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  "Forget Your Password ?",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto'),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: cardWidth*.25,
                  height: 40,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF71C9CE),
                      // Adjust the opacity value
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [
                    Color(0xff71C9CE),
                    Color(0xFFA6E3E9),
                  ],
                ),
                color: Color(0xff71C9CE),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(150),
                  bottomLeft: Radius.circular(150),
                )),
            width: cardWidth * .5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Hello, Friends!",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Register with your personal details to use all\n of site features",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto'),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 12,
                ),Container(
                  width: cardWidth*.25,
                  height: 40,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: GetBuilder<AuthController>(                      init: AuthController(),

                      builder: (_) {
                      return ElevatedButton(
                        onPressed: () {
                          controller.flipCard();                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(color: Colors.white), // White border
                          ),
                          elevation: 0.0, // Set elevation to 0.0 to remove shadow
                        ),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    }
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
