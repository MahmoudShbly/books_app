import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:books_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  HomeRepo homeRepo ;
  Future<void> fetchNewsetBooks() async {
    emit(NewestBooksLoadint());
    var result = await homeRepo.fetchNewsetBooks();
    result.fold(
      (failure) {
        emit(NewestBooksFailure(errorMassage: failure.errorMassage));
      },
      (books) {
       
        emit(NewestBooksSuccess(data: books));
      },
    );
  }

}
