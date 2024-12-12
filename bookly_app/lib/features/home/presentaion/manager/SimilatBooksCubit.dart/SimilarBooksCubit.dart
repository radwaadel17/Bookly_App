// ignore: file_names
import 'package:bookly_app/features/home/data/repos/HomeViewRepo.dart';
import 'package:bookly_app/features/home/presentaion/manager/SimilatBooksCubit.dart/SimilarBooksStates.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Similarbookscubit  extends  Cubit<SimilarStates>{
  Similarbookscubit(this.homeviewrepo):super(SimilarStatesInit());
  final Homeviewrepo homeviewrepo ;
  Future<void> fetchSimilarBooks({required String category}) async{
      emit(SimilarStatesLoading());
      var data = await homeviewrepo.fetchSimilarBooks(category: category);
      //print(data);
       data.fold((faluire){
        emit(SimilarStatesFaluire(faluire.errorMessage));
       },(books){
         emit(SimilarStatesSuccsess(books));
       });
  }
}

