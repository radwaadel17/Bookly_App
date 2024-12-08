import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

class BestsellerStates {}

class BestsellerStatesInit extends BestsellerStates {}

class BestsellerStatesLoading extends BestsellerStates {}

class BestsellerStatesFaluire extends BestsellerStates {
  final String errorMessage;
  BestsellerStatesFaluire(this.errorMessage);
}

class BestsellerStatesSuccsess extends BestsellerStates {
  final List<BookModel> books;
  BestsellerStatesSuccsess(this.books);
}
