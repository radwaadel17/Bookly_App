// ignore: file_names
import 'package:bookly_app/core/utlis/apiService.dart';
import 'package:bookly_app/features/home/data/repos/HomeViewRepImp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  getIt.registerSingleton<Homeviewrepimp>(Homeviewrepimp(
    getIt<ApiService>(),
  ));
}
