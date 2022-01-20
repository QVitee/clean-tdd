import 'package:dartz/dartz.dart';
import 'package:cleantdd/domain/entities/entities.dart';
import 'package:cleantdd/domain/repositories/continent_repo.dart';

class ContinentUC {
  final ContinentRepo _repo;

  ContinentUC(this._repo);

  Future<Either<Exception, Continent>> getContinent({String? code}) async {
    // Validate if code null.
    if (code == null) {
      return Left(Exception('Code is null'));
    }

    try {
      // Get result from Repository.
      final result = await _repo.getContinent(code: code);
      return result;
    } catch (e) {
      // Check if repository throw a exception.
      return Left(Exception(e.toString()));
    }
  }
}
