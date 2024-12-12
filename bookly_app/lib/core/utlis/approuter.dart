import 'package:bookly_app/core/utlis/serviceLocator.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/HomeViewRepImp.dart';
import 'package:bookly_app/features/home/presentaion/manager/SimilatBooksCubit.dart/SimilarBooksCubit.dart';
import 'package:bookly_app/features/home/presentaion/views/BookDetailsView.dart';
import 'package:bookly_app/features/home/presentaion/views/HomeView.dart';
import 'package:bookly_app/features/search/data/repos/searchRepoIm.dart';
import 'package:bookly_app/features/search/presentation/manager/SearchCubit/SearchCubit.dart';
import 'package:bookly_app/features/search/presentation/views/searchView.dart';
import 'package:bookly_app/features/splash/presentaion/views/spalsh%20view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class Approuter {
  static const kHomeView = '/HomeView';
  // ignore: constant_identifier_names
  static const KBookDetails = '/BookDetials';
  static const KSearchView = "/SearchView";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const splashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: KBookDetails,
        builder: (context, state) => BlocProvider(
          create: (context) => Similarbookscubit(getIt<Homeviewrepimp>()),
          child: BookDetailsView(model: state.extra as BookModel),
        ),
      ),
      GoRoute(
        path: KSearchView,
        builder: (context, state) => BlocProvider(
          create: (context) => SearchCubit(getIt<Searchrepoim>()),
          child: const SearchView(),
        ),
      ),
    ],
  );
}
