import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/errors/faluires.dart';
import 'package:dartz/dartz.dart';

// it's a class we build to determine what method should be executed for each feature
abstract class HomeRepo {
  // eithr gives you two options to return
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks();
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimmilarBooks(
      {required String category});
}
