import 'package:dartz/dartz.dart';
import 'package:movie/features/movie/domain/entities/movie_entity.dart';

abstract class GetMoviesDataSource {
  Future<Either<Exception, MovieEntity>> call();
}
