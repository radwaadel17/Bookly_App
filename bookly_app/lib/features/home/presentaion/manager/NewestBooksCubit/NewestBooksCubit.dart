import 'package:bookly_app/features/home/data/repos/HomeViewRepo.dart';
import 'package:bookly_app/features/home/presentaion/manager/NewestBooksCubit/NewestBooksStates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class NewestbooksCubit extends Cubit<NewestbooksState> {
  NewestbooksCubit(this.homeviewrepo) : super(NewestbooksStateInit());
  final Homeviewrepo homeviewrepo;
  Future<void> fetchNewstBooksMethod() async {
    emit(NewestbooksStateLoading());
    var result = await homeviewrepo.fetchNewstBooks();
    result.fold((faluire) {
      emit(NewestbooksStatesFaluire(faluire.errorMessage));
    }, (books) {
      emit(NewestbooksStatesSuccsess(books));
    });
  }
}
