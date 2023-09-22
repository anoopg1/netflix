import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/failures/main_failures.dart';
import 'package:netflix/domain/home/models/home_latest_model.dart';
import 'package:netflix/domain/home/models/home_trending_model.dart';
import 'package:netflix/domain/home/models/home_tv_shows_model.dart';

abstract class HomeServices {
  Future<Either<MainFailure, List<HomeLatestModel>>> getHomeLatestdata();
  Future<Either<MainFailure, List<HomeTrendingModel>>> getHomeTrendingdata();
  Future<Either<MainFailure, List<HomeTvShowModel>>> getHomeTvShowdata();
}
