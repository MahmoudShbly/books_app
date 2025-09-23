import 'package:books_app/features/home/presentation/views/book_details_view.dart';
import 'package:books_app/features/home/presentation/views/home_view.dart';
import 'package:books_app/features/search/presentation/views/search_view.dart';
import 'package:books_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
static const kHomeView = '/homeView';
static const kBookDetalisView = '/bookDetailsView';
static const kSearchView = '/bookDetailsView';
static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) =>const SplashView(),
     ),
    GoRoute(
      path: kSearchView,
      builder: (context, state) =>const SearchView(),
     ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) =>const HomeView(),
     ),
    GoRoute(
      path: kBookDetalisView,
      builder: (context, state) =>const BookDetailsView(),
     ),
  ],
);


}