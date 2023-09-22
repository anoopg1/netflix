import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/core/api_end_points.dart';
import 'package:netflix/domain/core/failures/main_failures.dart';
import 'package:netflix/domain/home/home_services.dart';
import 'package:netflix/domain/home/models/home_latest_model.dart';
import 'package:netflix/domain/home/models/home_trending_model.dart';
import 'package:netflix/domain/home/models/home_tv_shows_model.dart';

@LazySingleton(as: HomeServices)
class HomeRepository implements HomeServices {
  @override
  Future<Either<MainFailure, List<HomeLatestModel>>> getHomeLatestdata() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.homelatest);
      if (response.statusCode == 200) {
        final homelatestList = (response.data['results'] as List).map((e) {
          return HomeLatestModel.fromJson(e);
        }).toList();
        return Right(homelatestList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<HomeTrendingModel>>>
      getHomeTrendingdata() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.homeTrending);
      if (response.statusCode == 200) {
        final homeTrendingList = (response.data['results'] as List).map((e) {
          return HomeTrendingModel.fromJson(e);
        }).toList();
        return Right(homeTrendingList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<HomeTvShowModel>>> getHomeTvShowdata() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.hometopTvSHow);
      if (response.statusCode == 200) {
        final hometvshowlist = (response.data['results'] as List)
            .map((e) => HomeTvShowModel.fromJson(e))
            .toList();
        return Right(hometvshowlist);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
