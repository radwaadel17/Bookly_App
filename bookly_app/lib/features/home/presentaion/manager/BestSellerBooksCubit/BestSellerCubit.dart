import 'package:bookly_app/features/home/data/repos/HomeViewRepo.dart';
import 'package:bookly_app/features/home/presentaion/manager/BestSellerBooksCubit/BestSellerStates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerCubit extends Cubit<BestsellerStates> {
  BestSellerCubit(this.homeviewrepo) : super(BestsellerStatesInit());
  final Homeviewrepo homeviewrepo;
  Future<void> fetchBestSellerBooksMethod() async {
    emit(BestsellerStatesLoading());
    var result = await homeviewrepo.fetchBestSellerBooks();
    result.fold((faluire) {
      emit(BestsellerStatesFaluire(faluire.errorMessage));
    }, (books) {
      emit(BestsellerStatesSuccsess(books));
    });
  }
}
