import 'package:bloc/bloc.dart';
import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:books_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featrue_books_state.dart';

class FeatrueBooksCubit extends Cubit<FeatrueBooksState> {
  FeatrueBooksCubit(this.homeRepo, super.key);
  HomeRepo homeRepo;
  Future<void> fetchFeatrueBooks() async {
    emit(FeatrueBooksLoading());
    var result = await homeRepo.fetchFeturedBooks();
    result.fold(
      (failure) {
        emit(FeatrueBooksFailure(errorMassage: failure.errorMassage));
      },
      (books) {
        emit(FeatrueBooksSuccess(data: books));
      },
    );
  }
}
