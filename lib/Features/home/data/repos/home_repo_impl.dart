import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/utlity/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:bookly_app/core/errors/faluires.dart';
import 'package:dio/dio.dart';

class HomeRepoImp implements HomeRepo {
  final ApiService apiService;

  HomeRepoImp(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Sorting=newest&q=subject:chess courses');

      // parse the data that comes from the api to are books empty list
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFilauire.fromDioError(e));
      }

      return left(ServerFilauire(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() async {
    try {
      var data = await apiService.get(endPoint: 'volumes?q=subject:chess');
      // parse the data that comes from the api to are books empty list
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFilauire.fromDioError(e));
      }
      return left(ServerFilauire(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimmilarBooks(
      {required String category}) async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&Sorting=relvance &q=chess');
      // parse the data that comes from the api to are books empty list
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFilauire.fromDioError(e));
      }
      return left(ServerFilauire(e.toString()));
    }
  }
}
