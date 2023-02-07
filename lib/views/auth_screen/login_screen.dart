import 'package:flutter/material.dart';
import 'package:shop_cents/consts/colors.dart';
import 'package:shop_cents/widgets_common/app_logo_widget.dart';
import 'package:shop_cents/widgets_common/custom_textfield_widget.dart';
import 'package:shop_cents/widgets_common/our_button_widget.dart';

import '../../consts/lists.dart';
import '../../consts/strings.dart';
import '../../consts/styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffE62E04),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              //alignment: Alignment.topCenter,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 100.0),
                  child: AppLogoWidget(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    'Log in to $appname',
                    style: TextStyle(
                      fontFamily: bold,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 2,
                      offset: Offset(4, 4), // Shadow position
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const CustomTextFieldWidget(
                        hint: emailHint,
                        title: email,
                      ),
                      const CustomTextFieldWidget(
                        hint: passwordHint,
                        title: password,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.blueAccent,
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          child: const Text(forgetPass),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 20,
                        child: OurButtonWidget(
                          onPress: () {},
                          title: login,
                          color: MaterialStateProperty.all(redColor),
                          textColor: whiteColor,
                        ),
                      ),
                      const Text(
                        createNewAccount,
                        style: TextStyle(
                          color: fontGrey,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 20,
                        child: OurButtonWidget(
                          onPress: () {},
                          title: signup,
                          color: MaterialStateProperty.all(lightGolden),
                          textColor: redColor,
                        ),
                      ),
                      const Text(loginWith,
                          style: TextStyle(
                            color: fontGrey,
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          socialIconList.length,
                          (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: lightGrey,
                              radius: 25,
                              child: Image.asset(
                                socialIconList[index],
                                width: 30,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
