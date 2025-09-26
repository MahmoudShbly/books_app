part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}
final class NewestBooksLoadint extends NewestBooksState {}
final class NewestBooksFailure extends NewestBooksState {
  final String errorMassage;

  const NewestBooksFailure({required this.errorMassage});
}
final class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> data;

  const NewestBooksSuccess({required this.data});
  
}
