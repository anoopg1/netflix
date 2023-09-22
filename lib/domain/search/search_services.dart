import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/failures/main_failures.dart';
import 'package:netflix/domain/search/models/search_idle_model.dart';
import 'package:netflix/domain/search/models/search_result_model.dart';

abstract class SearchServices {
  Future<Either<MainFailure, List<SearchIdleModel>>> getSearchIdleData();
  Future<Either<MainFailure, List<SearchResultModel>>> getSearchResultData();
}
