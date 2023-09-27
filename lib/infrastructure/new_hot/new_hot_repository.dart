import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/core/api_end_points.dart';
import 'package:netflix/domain/core/failures/main_failures.dart';

import 'package:netflix/domain/new_hot/model/coming_soon_model.dart';
import 'package:netflix/domain/new_hot/model/everyone_watching_model.dart';
import 'package:netflix/domain/new_hot/new_hot_services.dart';

@LazySingleton(as: NewHotServices)
class NewandHotRepository implements NewHotServices {
  @override
  Future<Either<MainFailure, List<ComingSoonModel>>> getComingSoonData() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.newandhotcomingsoon);
      if (response.statusCode == 200) {
        final newandhotcomingsoonList =
            (response.data['results'] as List).map((e) {
          return ComingSoonModel.fromJson(e);
        }).toList();
        return Right(newandhotcomingsoonList);
      } else {
        return Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<EveryoneWatchingModel>>>
      getEveryonesWatching() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.homeTrending);
      if (response.statusCode == 200) {
        final everyonewatchingList =
            (response.data['results'] as List).map((e) {
          return EveryoneWatchingModel.fromJson(e);
        }).toList();
        return Right(everyonewatchingList);
      } else {
        return Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return Left(MainFailure.clientFailure());
    }
  }
}
