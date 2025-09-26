part of 'featrue_books_cubit.dart';

sealed class 
FeatrueBooksState extends Equatable {
  const FeatrueBooksState();

  @override
  List<Object> get props => [];
}

final class FeatrueBooksInitial extends FeatrueBooksState {}
final class FeatrueBooksLoading extends FeatrueBooksState {}
final class FeatrueBooksFailure extends FeatrueBooksState {
  final String errorMassage;
  const FeatrueBooksFailure({required this.errorMassage});
}
final class FeatrueBooksSuccess extends FeatrueBooksState {
final List<BookModel> data;

  const FeatrueBooksSuccess({required this.data});

}
