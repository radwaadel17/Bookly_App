import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

class SimilarStates {}

class SimilarStatesInit extends SimilarStates {}

class SimilarStatesLoading extends SimilarStates {}

class SimilarStatesFaluire extends SimilarStates {
  final String errorMessage;
  SimilarStatesFaluire(this.errorMessage);
}

class SimilarStatesSuccsess extends SimilarStates {
  final List<BookModel> books;
  SimilarStatesSuccsess(this.books);
}
