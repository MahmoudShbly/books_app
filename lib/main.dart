import 'package:books_app/core/utils/app_router.dart';
import 'package:books_app/core/utils/constants.dart';
import 'package:books_app/core/utils/service_locator.dart';
import 'package:books_app/features/home/data/repos/home_repo_impl.dart';
import 'package:books_app/features/home/presentation/manager/feature%20books%20cubit/cubit/featrue_books_cubit.dart';
import 'package:books_app/features/home/presentation/manager/newest%20books%20cubit/cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupServiceLocator();
  runApp(const BooksApp());
}

class BooksApp extends StatelessWidget {
  const BooksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> FeatrueBooksCubit(getIt.get<HomeRepoImpl>())..fetchFeatrueBooks()),
        BlocProvider(create: (context)=> NewestBooksCubit(getIt.get<HomeRepoImpl>())),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      ),
    );
  }
}
