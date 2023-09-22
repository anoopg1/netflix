import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/failures/main_failures.dart';
import 'package:netflix/domain/search/models/search_idle_model.dart';
import 'package:netflix/domain/search/models/search_result_model.dart';
import 'package:netflix/domain/search/search_services.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchServices searchServices;
  SearchBloc(this.searchServices) : super(SearchState.initial()) {
    on<_SearchIdle>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      final Either<MainFailure, List<SearchIdleModel>> searchIdleOption =
          await searchServices.getSearchIdleData();
      emit(searchIdleOption.fold(
          (failure) => state.copyWith(
              isLoading: false, searchIdleApiStatus: some(left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              searchIdleFinalList: success,
              searchIdleApiStatus: some(right(success)))));
    });
    on<_SearchMovie>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      final Either<MainFailure, List<SearchResultModel>> searchResultOption =
          await searchServices.getSearchResultData();
      emit(searchResultOption.fold(
          (failure) => state.copyWith(
              isLoading: false, searchIdleApiStatus: some(left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              searchResultFinalList: success,
              searchResultApiStatus: some(right(success)))));
    });
  }
}
