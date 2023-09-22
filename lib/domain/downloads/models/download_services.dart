import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/failures/main_failures.dart';
import 'package:netflix/domain/downloads/models/downloads_model.dart';

abstract class DownloadServices {
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImages();
}
