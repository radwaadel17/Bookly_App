import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/BookDetailsViewBody.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key , required this.model});
   final BookModel model ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsViewBody(model: model ,),
    );
  }
}
