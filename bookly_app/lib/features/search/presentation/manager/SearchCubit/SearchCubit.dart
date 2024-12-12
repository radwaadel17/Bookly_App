import 'package:bookly_app/features/search/data/repos/searchRepo.dart';
import 'package:bookly_app/features/search/presentation/manager/SearchCubit/SearchStates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchrepo) : super(SearchStateInit());
  Searchrepo searchrepo;
  Future<void> fetchSearchResultCubitMethod(
      {required String searchWord}) async {
    emit(SearchStateLoading());
    var data = await searchrepo.fetchSearchResults(searchWord: searchWord);
    data.fold((faluire) {
      emit(SearchStateFaluire(faluire.errorMessage));
    }, (books) {
      emit(SearchStateSuccess(books));
    });
  }
}
