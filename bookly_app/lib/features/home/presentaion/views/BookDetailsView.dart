import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentaion/manager/SimilatBooksCubit.dart/SimilarBooksCubit.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/BookDetailsViewBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key , required this.model});
   final BookModel model ;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<Similarbookscubit>(context).fetchSimilarBooks(category: widget.model.volumeInfo?.categories?.first);
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsViewBody(model: widget.model,),
    );
  }
}
