import 'package:bookly_app/features/home/presentaion/manager/NewestBooksCubit/NewestBooksCubit.dart';
import 'package:bookly_app/features/home/presentaion/manager/NewestBooksCubit/NewestBooksStates.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/CustomBookImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewHorizontal extends StatelessWidget {
  const ListViewHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestbooksCubit, NewestbooksState>(
      builder: (context, state) {
        if(state is NewestbooksStateLoading){
          return const Center(child: CircularProgressIndicator(),);
        }
        else if (state is NewestbooksStatesFaluire){
          return  Text('${state.errorMsg}');
        }
        else {
          return SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const CustomBookImage();
                }),
          ),
        );
        }
      },
    );
  }
}
