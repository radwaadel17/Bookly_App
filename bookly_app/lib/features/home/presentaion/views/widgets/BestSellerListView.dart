import 'package:bookly_app/features/home/presentaion/manager/BestSellerBooksCubit/BestSellerCubit.dart';
import 'package:bookly_app/features/home/presentaion/manager/BestSellerBooksCubit/BestSellerStates.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/BestSellerListViewItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerCubit, BestsellerStates>(
      builder: (context, state) {
        if(state is BestsellerStatesFaluire){
          return Center(child: Text(state.errorMessage));
        }
        else if (state is BestsellerStatesSuccsess){
          return ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: state.books.length,
          itemBuilder: (context, index) {
            return BestSellerListViewItem(model: state.books[index],);
          },
        );
        }
        else {
          return const Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
}
