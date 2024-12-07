import 'package:bookly_app/core/errors/faluiremodel.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/HomeViewRepo.dart';
import 'package:dartz/dartz.dart';

class Homeviewrepimp  implements Homeviewrepo{
  @override
  Future<Either<Faluire, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Faluire, List<BookModel>>> fetchNewstBooks() {
    // TODO: implement fetchNewstBooks
    throw UnimplementedError();
  }

}