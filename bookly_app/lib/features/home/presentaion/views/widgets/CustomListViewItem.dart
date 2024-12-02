
import 'package:bookly_app/core/utlis/assetsmodel.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.white,
              image: const DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(AssetData.test))),
        ),
      ),
    );
  }
}
