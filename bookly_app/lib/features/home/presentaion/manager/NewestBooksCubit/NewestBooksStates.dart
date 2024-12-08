import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

class NewestbooksState {}

class NewestbooksStateInit extends NewestbooksState {}

class NewestbooksStateLoading extends NewestbooksState {}

class NewestbooksStatesFaluire extends NewestbooksState {
  String errorMsg ;
  NewestbooksStatesFaluire(this.errorMsg);
}

class NewestbooksStatesSuccsess extends NewestbooksState {
  final List<BookModel> books;
  NewestbooksStatesSuccsess(this.books);
}
