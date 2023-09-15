part of 'downloads_bloc.dart';

@freezed
class DownloadState with _$DownloadState {
  const factory DownloadState({
    required bool isLoading,
    required Option<Either<MainFailure, List<Downloads>>>
        downloadDailureorSuccessOption,
   required List<Downloads> downloads,
  }) = _DownloadState;

  factory DownloadState.initial() {
    return const DownloadState(
      downloads: [],
        isLoading: false, downloadDailureorSuccessOption: None());
  }
}
