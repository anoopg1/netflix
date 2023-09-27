import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/failures/main_failures.dart';
import 'package:netflix/domain/new_hot/model/coming_soon_model.dart';
import 'package:netflix/domain/new_hot/model/everyone_watching_model.dart';

abstract class NewHotServices {
  Future<Either<MainFailure, List<ComingSoonModel>>> getComingSoonData();
  Future<Either<MainFailure, List<EveryoneWatchingModel>>> getEveryonesWatching();
}
