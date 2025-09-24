import 'package:books_app/core/errors/failures.dart';
import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:books_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo{ 
 @override
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  } 
  @override
  Future<Either<Failures, List<BookModel>>> fetchFeturedBooks() {
    // TODO: implement fetchFeturedBooks
    throw UnimplementedError();
  }

}