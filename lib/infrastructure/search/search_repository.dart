import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/core/api_end_points.dart';
import 'package:netflix/domain/core/failures/main_failures.dart';
import 'package:netflix/domain/search/models/search_idle_model.dart';
import 'package:netflix/domain/search/models/search_result_model.dart';
import 'package:netflix/domain/search/search_services.dart';

@LazySingleton(as: SearchServices)
class SearchRepository implements SearchServices {
  @override
  Future<Either<MainFailure, List<SearchIdleModel>>> getSearchIdleData() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.searchIdle);
      if (response.statusCode == 200) {
        final searchIdleList = (response.data['results'] as List).map((e) {
          return SearchIdleModel.fromJson(e);
        }).toList();
        return Right(searchIdleList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      print(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<SearchResultModel>>>
      getSearchResultData() async {
    try {
      final Response response = await Dio(BaseOptions())
          .get(ApiEndPoints.search, queryParameters: {'query': "spiderman"});
      if (response.statusCode == 200) {
        final searchResultList = (response.data['results'] as List).map((e) {
          return SearchResultModel.fromJson(e);
        }).toList();
        return Right(searchResultList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      print(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
