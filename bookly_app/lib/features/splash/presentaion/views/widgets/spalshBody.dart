import 'package:bookly_app/core/assetsmodel.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetData.logo),
          const SizedBox(
            height: 4,
          ),
          const Text(
            'Read Free Books',
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
