// ignore: file_names
import 'package:bookly_app/core/assetsmodel.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16 , left: 16 , top: 60, bottom: 30),
      child: Row(
        children: [
          Image.asset(
            AssetData.logo,
            height: 18,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 30,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
