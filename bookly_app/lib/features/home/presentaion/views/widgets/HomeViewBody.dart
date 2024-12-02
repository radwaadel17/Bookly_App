// ignore: file_names
import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/CustomAppbar.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/ListViewHorizontal.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppbar(),
        ListViewHorizontal(),
        Padding(
          padding: EdgeInsets.only(
            left: 24,
            top: 40,
          ),
          child: Text(
            'Best Seller',
            style: Styles.textstyle18,
          ),
          
        ),
      ],
    );
  }
}
