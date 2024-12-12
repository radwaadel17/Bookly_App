import 'package:bookly_app/core/utlis/approuter.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/BooksActionBody.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key , required this.model});
   final BookModel model ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          const Expanded(
              child: BooksActionBody(
            text: 'Free',
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            textColor: Colors.black,
            backgroundColor: Colors.white,
          )),
          Expanded(
              child: BooksActionBody(
            onPressed: () async {
              final Uri uri = Uri.parse(model.volumeInfo!.previewLink!);
              if (await canLaunchUrl(uri)) {
                await launchUrl(uri);
              }
            },
            fontSize: 15,
            text: 'Free Preview',
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            textColor: Colors.white,
            backgroundColor: Color.fromARGB(255, 255, 108, 108),
          )),
        ],
      ),
    );
  }
}
