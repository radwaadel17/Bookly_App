import 'package:bookly_app/core/assetsmodel.dart';
import 'package:bookly_app/features/home/presentaion/views/HomeView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    InitSlidinganimation();
    navigateTohomeview();
    //single responsibilty principle
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

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
          AnimatedBuilder(
            animation: slidingAnimation,
            builder: (context, _) {
              return SlideTransition(
                position: slidingAnimation,
                child: const Text(
                  'Read Free Books',
                  textAlign: TextAlign.center,
                ),
              );
            },
          )
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  void InitSlidinganimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void navigateTohomeview() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(const HomeView(), transition: Transition.fade);
    });
  }
}
