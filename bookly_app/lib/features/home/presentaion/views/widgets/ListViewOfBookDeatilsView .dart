import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentaion/manager/SimilatBooksCubit.dart/SimilarBooksCubit.dart';
import 'package:bookly_app/features/home/presentaion/manager/SimilatBooksCubit.dart/SimilarBooksStates.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/CustomBookImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewOfBookDeatilsView extends StatelessWidget {
  const ListViewOfBookDeatilsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Similarbookscubit, SimilarStates>(
      builder: (context, state) {
        if(state is SimilarStatesFaluire){
          return const Center(child: Icon(Icons.error));
          
        }
        else if (state is SimilarStatesSuccsess){
          return SizedBox(
          height: MediaQuery.of(context).size.height * 0.13,
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                 return CustomBookImage(url: state.books[index].volumeInfo!.imageLinks!.thumbnail!,);
                }),
          ),
        );
        }
        else {
          return const Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
}
