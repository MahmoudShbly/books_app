import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:books_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRepo, ) : super(FeatureBooksInitial());
  HomeRepo homeRepo;
  Future<void> fetchFeatureBooks() async {
    emit(FeatureBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) {
        emit(FeatureBooksFailure(errorMassage: failure.errorMassage));
      },
      (books) {
        emit(FeatureBooksSuccess(data: books));
      },
    );
  }
}
