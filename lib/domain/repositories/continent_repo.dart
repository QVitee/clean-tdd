import 'package:dartz/dartz.dart';
import '../entities/entities.dart';

abstract class ContinentRepo {
  Future<Either<Exception, Continent>> getContinent({required String code});
}
