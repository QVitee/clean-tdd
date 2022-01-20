import 'package:dartz/dartz.dart';
import 'package:cleantdd/core/core.dart';
import 'package:cleantdd/data/models/models.dart';
import 'package:cleantdd/data/requests/requests.dart';
import 'package:cleantdd/domain/domain.dart';

class ContinentRepoImpl extends ContinentRepo {
  final AppClient client;
  final ContinentReq req;

  ContinentRepoImpl(this.client, this.req);

  @override
  Future<Either<Exception, Continent>> getContinent(
      {required String code}) async {
    final vars = {'code': code};

    final result = await client.query(
      doc: req.getContinent,
      vars: vars,
      subKey: 'continent',
    );

    return result.fold(
      (e) => Left(e),
      (r) => Right(ContinentModel.fromJson(r ?? {}).entity),
    );
  }
}
