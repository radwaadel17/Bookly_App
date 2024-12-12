// ignore: file_names
import 'package:bookly_app/core/errors/faluiremodel.dart';
import 'package:bookly_app/core/utlis/apiService.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repos/searchRepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class Searchrepoim implements Searchrepo {
  @override
  Future<Either<Faluire, List<BookModel>>> fetchSearchResults(
      {required String searchWord}) async {
    try {
      var data = await ApiService(Dio()).getData(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:$searchWord');
      List<dynamic> dataList = data['items'];
      List<BookModel> books = [];
      for (int i = 0; i < dataList.length; i++) {
        try {
           books.add(BookModel.fromJson(dataList[i]));
        } catch (e) {
          books.add(BookModel.fromJson(dataList[i]));
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.FromDioError(e));
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
