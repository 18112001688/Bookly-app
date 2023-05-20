import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'simillar_books_state.dart';

class SimillarBooksCubit extends Cubit<SimillarBooksState> {
  SimillarBooksCubit(this.homeRepo) : super(SimillarBooksInitial());

  final HomeRepo homeRepo;
  Future fetchSimillarBooks({required String catogory}) async {
    emit(SimillarBooksLoading());
    var result = await homeRepo.fetchSimmilarBooks(category: catogory);
    // fold is mehod inside the either class return the two (Left and right)
    result.fold((faluire) {
      emit(SimillarBooksFailure(faluire.errorMessage));
    }, (books) {
      emit(SimillarBookSuccess(books: books));
    });
  }
}
