import 'package:bookly_app/core/errors/faluiremodel.dart';
import 'package:bookly_app/core/utlis/apiService.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/HomeViewRepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class Homeviewrepimp implements Homeviewrepo {
  @override
  Future<Either<Faluire, List<BookModel>>> fetchNewstBooks() async {
    try {
      var data = await ApiService(Dio())
          .getData(endPoint: 'Filtering=free-ebooks&q=subject:programming');
      List<dynamic> jsonDataList = data['items'];
      // ignore: unused_element
      List<BookModel> books = [];
      for (int i = 0; i < jsonDataList.length; i++) {
        books.add(BookModel.fromJson(jsonDataList[i]));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.FromDioError(e));
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Faluire, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }
}
