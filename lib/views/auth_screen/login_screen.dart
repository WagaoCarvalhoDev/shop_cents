import 'package:flutter/material.dart';
import 'package:shop_cents/widgets_common/app_logo_widget.dart';
import 'package:shop_cents/widgets_common/custom_textfield_widget.dart';

import '../../consts/strings.dart';
import '../../consts/styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE62E04),
      body: Column(children: [
        Expanded(
          flex: 2,
          child: Stack(
            alignment: Alignment.topCenter,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 100.0),
                child: AppLogoWidget(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 190.0),
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
        const SizedBox(
          height: 50,
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
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
                        child: const Text(forgetPass),
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.pink,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
            ),
          ),
        ),
      ]),
    );
  }
}
