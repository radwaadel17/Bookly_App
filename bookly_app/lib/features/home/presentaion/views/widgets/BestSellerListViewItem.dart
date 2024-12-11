import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utlis/approuter.dart';
import 'package:bookly_app/core/utlis/assetsmodel.dart';
import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/CustomBookImage.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/RatingRow.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.model});
  final BookModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(Approuter.KBookDetails , extra: model);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
        child: SizedBox(
          height: 120,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomBookImage(url: model.volumeInfo!.imageLinks!.thumbnail!,),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Text(
                          model.volumeInfo!.title!,
                          style: Styles.textstyle20,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        )),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(model.volumeInfo!.authors[0], style: Styles.textstyle14),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text(
                          'Free',
                          style: Styles.textstyle20.copyWith(
                              fontFamily: kprimaryFont,
                              fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        const RatingRow()
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
