// ignore: file_names
import 'package:bookly_app/core/errors/faluiremodel.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class Searchrepo {
  Future<Either<Faluire , List<BookModel>>> fetchSearchResults({required String searchWord}); 
}