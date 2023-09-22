import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/failures/main_failures.dart';
import 'package:netflix/domain/downloads/models/download_services.dart';
import 'package:netflix/domain/downloads/models/downloads_model.dart';
part 'downloads_bloc.freezed.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadState> {
  final DownloadServices downloadServices;
  DownloadsBloc(this.downloadServices) : super(DownloadState.initial()) {
    on<DownloadsEvent>(
      (event, emit) async {
        emit(
          state.copyWith(
            isLoading: true,
            downloadDailureorSuccessOption: none(),
          ),
        );
        final Either<MainFailure, List<Downloads>> downloadOption =
            await downloadServices.getDownloadsImages();
        // print(downloadOption.toString());
        emit(
          downloadOption.fold(
            (failure) => state.copyWith(
              isLoading: false,
              downloadDailureorSuccessOption: some(
                left(failure),
              ),
            ),
            (success) => state.copyWith(
              isLoading: false,
              downloads: success,
              downloadDailureorSuccessOption: some(
                right(success),
              ),
            ),
          ),
        );
      },
    );
  }
}
