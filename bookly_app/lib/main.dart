import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utlis/apiService.dart';
import 'package:bookly_app/core/utlis/approuter.dart';
import 'package:bookly_app/features/home/data/repos/HomeViewRepImp.dart';
import 'package:bookly_app/features/home/presentaion/manager/BestSellerBooksCubit/BestSellerCubit.dart';
import 'package:bookly_app/features/home/presentaion/manager/NewestBooksCubit/NewestBooksCubit.dart';
import 'package:bookly_app/features/splash/presentaion/views/spalsh%20view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              NewestbooksCubit(
                Homeviewrepimp(
                  ApiService(
                    Dio()))),
          
          ),
              BlocProvider(
          create: (context) =>
              BestSellerCubit(
                Homeviewrepimp(
                  ApiService(
                    Dio()))),
          
          ),
      ],
      child: MaterialApp.router(
        routerConfig: Approuter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Scolor,
            brightness: Brightness.dark,
            fontFamily: 'Montserrat'),
      ),
    );
  }
}
