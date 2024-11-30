// ignore: file_names
import 'package:bookly_app/core/assetsmodel.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/CustomAppbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppbar()
      ],
    );
  }
}

