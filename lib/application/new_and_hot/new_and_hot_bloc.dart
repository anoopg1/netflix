import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/failures/main_failures.dart';
import 'package:netflix/domain/new_hot/model/everyone_watching_model.dart';
import 'package:netflix/domain/new_hot/new_hot_services.dart';

import '../../domain/new_hot/model/coming_soon_model.dart';

part 'new_and_hot_event.dart';
part 'new_and_hot_state.dart';
part 'new_and_hot_bloc.freezed.dart';

@injectable
class NewAndHotBloc extends Bloc<NewAndHotEvent, NewAndHotState> {
  final NewHotServices newHotServices;
  NewAndHotBloc(this.newHotServices) : super(NewAndHotState.initial()) {
    on<_GetComingSoonData>(
      (event, emit) async {
        emit(state.copyWith(
          isLoading: true,
        ));
        final Either<MainFailure, List<ComingSoonModel>> comingsoonOption =
            await newHotServices.getComingSoonData();
        emit(
          comingsoonOption.fold(
            (failure) => state.copyWith(
                isLoading: false, comingsoonApiStatus: some(left(failure))),
            (success) => state.copyWith(
              isLoading: false,
              comingsoonList: success,
              comingsoonApiStatus: Some(
                Right(success),
              ),
            ),
          ),
        );
      },
    );
    on<_GetEveryonesWatching>(
      (event, emit) async {
        emit(state.copyWith(
          isLoading: true,
        ));
        final Either<MainFailure, List<EveryoneWatchingModel>>
            everyonewatchingOption =
            await newHotServices.getEveryonesWatching();
        emit(
          everyonewatchingOption.fold(
            (failure) => state.copyWith(
                isLoading: false,
                everyoneWatchingApiStatus: Some(left(failure))),
            (success) => state.copyWith(
              isLoading: false,
              everyonewatchingList: success,
              everyoneWatchingApiStatus: Some(
                Right(success),
              ),
            ),
          ),
        );
      },
    );
  }
}
