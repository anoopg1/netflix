import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/failures/main_failures.dart';
import 'package:netflix/domain/home/home_services.dart';

import 'package:netflix/domain/home/models/home_latest_model.dart';
import 'package:netflix/domain/home/models/home_trending_model.dart';
import 'package:netflix/domain/home/models/home_tv_shows_model.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeServices homeServices;
  HomeBloc(this.homeServices) : super(HomeState.initial()) {
    on<_GetlatestMovies>(
      (event, emit) async {
        emit(state.copyWith(
          isLoading: true,
          homeFailureorSuccessOption: none(),
        ));
        final Either<MainFailure, List<HomeLatestModel>> homelatestoption =
            await homeServices.getHomeLatestdata();

        emit(
          homelatestoption.fold(
            (failure) => state.copyWith(
              isLoading: false,
              homeFailureorSuccessOption: some(
                left(failure),
              ),
            ),
            (success) => state.copyWith(
              isLoading: false,
              latestmodelList: success,
              homeFailureorSuccessOption: some(
                right(success),
              ),
            ),
          ),
        );
      },
    );

    on<_GetTrendingMovies>(
      (event, emit) async {
        emit(state.copyWith(
          isLoading: true,
          homeFailureorSuccessOption: none(),
        ));
        final Either<MainFailure, List<HomeTrendingModel>> hometrendingtoption =
            await homeServices.getHomeTrendingdata();

        emit(hometrendingtoption.fold(
            (failure) => state.copyWith(isLoading: false),
            (success) => state.copyWith(
                  isLoading: false,
                  trendingModelList: success,
                )));
      },
    );

    on<_GetTVshows>(
      (event, emit) async {
        emit(state.copyWith(
          isLoading: true,
          homeFailureorSuccessOption: none(),
        ));
        final Either<MainFailure, List<HomeTvShowModel>> hometvshowOption =
            await homeServices.getHomeTvShowdata();
        emit(hometvshowOption.fold(
            (failure) => state.copyWith(isLoading: false),
            (success) =>
                state.copyWith(isLoading: false, tvshowmodelList: success)));
      },
    );
  }
}
