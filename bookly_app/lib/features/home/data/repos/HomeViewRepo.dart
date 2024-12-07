import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

abstract class Homeviewrepo {
  Future<List<BookModel>> fetchNewstBooks();
  Future<List<BookModel>> fetchBestSellerBooks();
}