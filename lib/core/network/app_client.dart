import 'package:dartz/dartz.dart';
import 'package:graphql/client.dart';
import 'package:cleantdd/core/core.dart';
import 'dart:developer' as developer;

class AppClient {
  // Config client (endpoint and token)
  GraphQLClient getClient() {
    final Link _link = HttpLink(
      AppConfig.instance.apiEndpoint,
      // defaultHeaders: {
      //   'Authorization': 'Bearer $YOUR_PERSONAL_ACCESS_TOKEN',
      // },
    );

    return GraphQLClient(
      cache: GraphQLCache(),
      link: _link,
    );
  }

  Future<Either<Exception, Map<String, dynamic>?>> query({
    required String doc,
    Map<String, dynamic> vars = const {},
    String? subKey,
  }) async {
    try {
      final _client = getClient();

      developer
          .log('-----------------QUERY GRAPHQL API REQUEST------------------');
      developer.log('DOCUMENTS:\n$doc');
      developer.log('VARIABLES:\n$vars');

      final options = WatchQueryOptions(
        document: gql(doc),
        variables: vars,
      );
      final result = await _client.query(options);

      if (result.hasException || result.exception != null) {
        return Left(result.exception!);
      }

      var data = result.data ?? {};

      developer
          .log('-----------------QUERY GRAPHQL API RESPONSE------------------');
      developer.log('DATA:\n${result.data}');

      if (subKey != null) {
        data = (data[subKey] ?? {}) as Map<String, dynamic>;
      }
      return Right(data);
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }

  Future<Either<Exception, Map<String, dynamic>?>> mutate({
    required String doc,
    Map<String, dynamic> vars = const {},
    String? subKey,
  }) async {
    try {
      final _client = getClient();

      developer.log(
          '-----------------MUTATION GRAPHQL API REQUEST------------------');
      developer.log('DOCUMENTS:\n$doc');
      developer.log('VARIABLES:\n$vars');

      final options = MutationOptions(
        document: gql(doc),
        variables: vars,
      );
      final result = await _client.mutate(options);

      if (result.hasException || result.exception != null) {
        return Left(result.exception!);
      }

      var data = result.data ?? {};

      developer.log(
          '-----------------MUTATION GRAPHQL API RESPONSE------------------');
      developer.log('DATA:\n${result.data}');

      if (subKey != null) {
        data = (data[subKey] ?? {}) as Map<String, dynamic>;
      }
      return Right(data);
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }
}
