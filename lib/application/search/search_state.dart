part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required bool isLoading,
    required Option<Either<MainFailure, List<SearchIdleModel>>>
        searchIdleApiStatus,
    required Option<Either<MainFailure, List<SearchResultModel>>>
        searchResultApiStatus,
    required List<SearchIdleModel> searchIdleFinalList,
    required List<SearchResultModel> searchResultFinalList,
  }) = _SearchState;

  factory SearchState.initial() {
    return const SearchState(
      isLoading: false,
      searchIdleApiStatus: None(),
      searchResultApiStatus: None(),
      searchIdleFinalList: [],
      searchResultFinalList: [],
    );
  }
}
