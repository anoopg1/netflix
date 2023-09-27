part of 'new_and_hot_bloc.dart';

@freezed
class NewAndHotState with _$NewAndHotState {
  const factory NewAndHotState({
    required bool isLoading,
    required List<ComingSoonModel> comingsoonList,
    required List<EveryoneWatchingModel> everyonewatchingList,
    required Option<Either<MainFailure, List<ComingSoonModel>>>
        comingsoonApiStatus,
    required Option<Either<MainFailure, List<EveryoneWatchingModel>>>
        everyoneWatchingApiStatus,
  }) = _NewAndHotState;

  factory NewAndHotState.initial() {
    return NewAndHotState(
        isLoading: false,
        comingsoonList: [],
        everyonewatchingList: [],
        comingsoonApiStatus: None(),
        everyoneWatchingApiStatus: None());
  }
}
