import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_cents/consts/consts.dart';

final imageLogoProvider = Provider<String>((ref) => icAppLogo);

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final img = ref.watch(imageLogoProvider);
      return Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.all(8),
        width: 77,
        height: 77,
        child: Image.asset(img),
      );
    });
  }
}
