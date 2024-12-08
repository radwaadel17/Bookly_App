import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utlis/approuter.dart';
import 'package:bookly_app/core/utlis/serviceLocator.dart';
import 'package:bookly_app/features/home/data/repos/HomeViewRepImp.dart';
import 'package:bookly_app/features/home/presentaion/manager/BestSellerBooksCubit/BestSellerCubit.dart';
import 'package:bookly_app/features/home/presentaion/manager/NewestBooksCubit/NewestBooksCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setup();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NewestbooksCubit(
            getIt<Homeviewrepimp>(),
          ),
        ),
        BlocProvider(
          create: (context) => BestSellerCubit(
            getIt<Homeviewrepimp>(),
          ),
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
