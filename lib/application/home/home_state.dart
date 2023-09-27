part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState(
      {required bool isLoading,
      required Option<Either<MainFailure, List<HomeLatestModel>>>
          homeFailureorSuccessOption,
      required List<HomeLatestModel> latestmodelList,
      required List<HomeTrendingModel> trendingModelList,
      required List<HomeTvShowModel> tvshowmodelList}) = _HomeState;

  factory HomeState.initial() {
    return const HomeState(
        isLoading: false,
        latestmodelList: [],
        trendingModelList: [],
        tvshowmodelList: [],
        homeFailureorSuccessOption: None());
  }
}
