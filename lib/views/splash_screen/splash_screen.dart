import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../consts/colors.dart';
import '../../consts/images.dart';
import '../../consts/strings.dart';
import '../../consts/styles.dart';
import '../../routes/named_route.dart';
import '../../widgets_common/app_logo_widget.dart';

final imageSplashProvider = Provider<String>((ref) => icSplashBg);

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _SplashState();
}

class _SplashState extends ConsumerState<SplashScreen> {
  changeScreen() {
    Timer(const Duration(seconds: 3), () {
      context.goNamed(loginScreen);
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50)),
              child: Align(
                alignment: Alignment.topLeft,
                child: Consumer(
                  builder: (context, ref, child) {
                    final img = ref.watch(imageSplashProvider);
                    return Image.asset(
                      img,
                      width: 300,
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            const AppLogoWidget(),
            const SizedBox(height: 10),
            const Text(
              appname,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Text(
              appversion,
              style: TextStyle(color: Colors.white),
            ),
            const Spacer(),
            const Text(
              credits,
              style: TextStyle(
                color: Colors.white,
                fontFamily: semibold,
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
