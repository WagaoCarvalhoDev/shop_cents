import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_cents/consts/consts.dart';
import 'package:shop_cents/widgets_common/app_logo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

final imageSplashProvider = Provider<String>((ref) => icSplashBg);

class _SplashScreenState extends State<SplashScreen> {
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
