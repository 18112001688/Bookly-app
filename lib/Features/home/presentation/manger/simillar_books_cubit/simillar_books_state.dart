part of 'simillar_books_cubit.dart';

abstract class SimillarBooksState extends Equatable {
  const SimillarBooksState();

  @override
  List<Object> get props => [];
}

class SimillarBooksInitial extends SimillarBooksState {}

class SimillarBooksLoading extends SimillarBooksState {}

class SimillarBookSuccess extends SimillarBooksState {
  final List<BookModel> books;
  const SimillarBookSuccess({required this.books});
}

class SimillarBooksFailure extends SimillarBooksState {
  final String errorMessage;

  const SimillarBooksFailure(this.errorMessage);
}
