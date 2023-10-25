import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/api_end_point.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';
import 'package:netflix_app/domain/search/model/search_response/search_response.dart';

import 'package:netflix_app/domain/search/search_service.dart';

@LazySingleton(as: SearchService)
class SearchImplementation implements SearchService {
  @override
  Future<Either<MainFailures, SearchResponse>> searchMulti(
      {required String queryMulti}) async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.search,
        queryParameters: {
          'query': queryMulti,
        },
      );
      print('Response data: ${response.data}');
      if (response.statusCode == 200 || response.statusCode == 201) {
        final results = SearchResponse.fromJson(response.data);
        return Right(results);
      } else {
        return const Left(MainFailures.serverFailures());
      }
    } catch (e) {
      print(e);
      return const Left(MainFailures.clientFailures());
    }
  }
}
