import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_cents/consts/consts.dart';

final imageBgProvider = Provider<String>((ref) => imgBackground);

class BgWidget extends StatelessWidget {
  const BgWidget({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final img = ref.watch(imageBgProvider);
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.fill,
            ),
          ),
          child: child,
        );
      },
    );
  }
}
