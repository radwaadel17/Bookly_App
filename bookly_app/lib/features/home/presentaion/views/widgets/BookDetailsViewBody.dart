import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/BooksAction.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/CustomAppBarForBookDetailsView%20.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/CustomBookImage.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/ListViewOfBookDeatilsView%20.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/RatingRow.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key , required this.model});
  final BookModel model;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const CustomAppBarForBookDetailsView(),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.34,
                  child: CustomBookImage(url: model.volumeInfo!.imageLinks!.thumbnail!,) ),
              const SizedBox(height: 43),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  model.volumeInfo!.title!,
                  style: Styles.textstyle30,
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                (model.volumeInfo!.authors?[0]) == null ? 'Unkown Author' : model.volumeInfo!.authors?[0],
                style: Styles.textstyle18.copyWith(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.normal,
                    color: Colors.white.withOpacity(0.7)),
              ),
              const SizedBox(
                height: 14,
              ),
              const RatingRow(),
              const SizedBox(
                height: 37,
              ),
              BooksAction(model: model,),
              const Expanded(
                child: SizedBox(
                  height: 20,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You may like ',
                    style: Styles.textstyle16,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const ListViewOfBookDeatilsView(),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        )
      ],
    );
  }
}
