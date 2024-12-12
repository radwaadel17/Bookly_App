// ignore: file_names
import 'package:bookly_app/features/home/presentaion/views/widgets/BestSellerListViewItem.dart';
import 'package:bookly_app/features/search/presentation/manager/SearchCubit/SearchCubit.dart';
import 'package:bookly_app/features/search/presentation/manager/SearchCubit/SearchStates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          if(state is SearchStateFaluire){
            return Center(child: Text(state.errorMessage,));
          }
          else if (state is SearchStateSuccess){
            return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
               return BestSellerListViewItem(model: state.books[index],);
            },
           );
          }
          else if (state is SearchStateLoading) {
            return const Center(child: CircularProgressIndicator(),);
          }
          else {
            return const Center(child: Text('Please enter a book name to search'),);
          }
         
        },
      ),
    );
  }
}
