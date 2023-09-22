part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.initial() = _Initial;
  const factory SearchEvent.searchIdle() = _SearchIdle;
  const factory SearchEvent.searchMovies() =
      _SearchMovie;
}
