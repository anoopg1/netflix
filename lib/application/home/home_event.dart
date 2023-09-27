part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.initial() = _Initial;
  const factory HomeEvent.getlatestMovies() = _GetlatestMovies;
  const factory HomeEvent.getTrendingMovies() = _GetTrendingMovies;
  const factory HomeEvent.getTVshows() = _GetTVshows;

}