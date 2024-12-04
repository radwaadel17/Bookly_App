import 'package:bookly_app/features/home/presentaion/views/widgets/CustomAppBarForBookDetailsView%20.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBarForBookDetailsView(),
      ],
    );
  }
}

