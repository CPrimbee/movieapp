import 'package:dartz/dartz.dart';
import 'package:movie/features/movie/data/datasources/get_movies_datasource.dart';
import 'package:movie/features/movie/domain/entities/movie_entity.dart';

class GetMoviesDataSourceDecorator implements GetMoviesDataSource {
  final GetMoviesDataSource _getMoviesDataSource;
  GetMoviesDataSourceDecorator(this._getMoviesDataSource);

  @override
  Future<Either<Exception, MovieEntity>> call() => _getMoviesDataSource();
}
