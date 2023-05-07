import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:bookly_app/core/errors/faluires.dart';
import 'package:dio/dio.dart';

class HomeRepoImp implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    Dio().get('path');
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() {
    throw UnimplementedError();
  }
}
