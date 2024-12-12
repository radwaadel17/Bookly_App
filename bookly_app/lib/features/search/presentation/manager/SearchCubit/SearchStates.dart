import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

class SearchState {}

class SearchStateInit extends SearchState {}

class SearchStateFaluire extends SearchState {
  final String errorMessage;
  SearchStateFaluire(this.errorMessage);
}

class SearchStateLoading extends SearchState {}

class SearchStateSuccess extends SearchState {
  final List<BookModel> books;
  SearchStateSuccess(this.books);
}
