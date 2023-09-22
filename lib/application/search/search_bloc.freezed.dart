// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchIdle,
    required TResult Function() searchMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchIdle,
    TResult? Function()? searchMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchIdle,
    TResult Function()? searchMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SearchIdle value) searchIdle,
    required TResult Function(_SearchMovie value) searchMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SearchIdle value)? searchIdle,
    TResult? Function(_SearchMovie value)? searchMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SearchIdle value)? searchIdle,
    TResult Function(_SearchMovie value)? searchMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SearchEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchIdle,
    required TResult Function() searchMovies,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchIdle,
    TResult? Function()? searchMovies,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchIdle,
    TResult Function()? searchMovies,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SearchIdle value) searchIdle,
    required TResult Function(_SearchMovie value) searchMovies,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SearchIdle value)? searchIdle,
    TResult? Function(_SearchMovie value)? searchMovies,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SearchIdle value)? searchIdle,
    TResult Function(_SearchMovie value)? searchMovies,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchEvent {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_SearchIdleCopyWith<$Res> {
  factory _$$_SearchIdleCopyWith(
          _$_SearchIdle value, $Res Function(_$_SearchIdle) then) =
      __$$_SearchIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchIdleCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_SearchIdle>
    implements _$$_SearchIdleCopyWith<$Res> {
  __$$_SearchIdleCopyWithImpl(
      _$_SearchIdle _value, $Res Function(_$_SearchIdle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SearchIdle implements _SearchIdle {
  const _$_SearchIdle();

  @override
  String toString() {
    return 'SearchEvent.searchIdle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchIdle,
    required TResult Function() searchMovies,
  }) {
    return searchIdle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchIdle,
    TResult? Function()? searchMovies,
  }) {
    return searchIdle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchIdle,
    TResult Function()? searchMovies,
    required TResult orElse(),
  }) {
    if (searchIdle != null) {
      return searchIdle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SearchIdle value) searchIdle,
    required TResult Function(_SearchMovie value) searchMovies,
  }) {
    return searchIdle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SearchIdle value)? searchIdle,
    TResult? Function(_SearchMovie value)? searchMovies,
  }) {
    return searchIdle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SearchIdle value)? searchIdle,
    TResult Function(_SearchMovie value)? searchMovies,
    required TResult orElse(),
  }) {
    if (searchIdle != null) {
      return searchIdle(this);
    }
    return orElse();
  }
}

abstract class _SearchIdle implements SearchEvent {
  const factory _SearchIdle() = _$_SearchIdle;
}

/// @nodoc
abstract class _$$_SearchMovieCopyWith<$Res> {
  factory _$$_SearchMovieCopyWith(
          _$_SearchMovie value, $Res Function(_$_SearchMovie) then) =
      __$$_SearchMovieCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchMovieCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_SearchMovie>
    implements _$$_SearchMovieCopyWith<$Res> {
  __$$_SearchMovieCopyWithImpl(
      _$_SearchMovie _value, $Res Function(_$_SearchMovie) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SearchMovie implements _SearchMovie {
  const _$_SearchMovie();

  @override
  String toString() {
    return 'SearchEvent.searchMovies()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchMovie);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchIdle,
    required TResult Function() searchMovies,
  }) {
    return searchMovies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchIdle,
    TResult? Function()? searchMovies,
  }) {
    return searchMovies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchIdle,
    TResult Function()? searchMovies,
    required TResult orElse(),
  }) {
    if (searchMovies != null) {
      return searchMovies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SearchIdle value) searchIdle,
    required TResult Function(_SearchMovie value) searchMovies,
  }) {
    return searchMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SearchIdle value)? searchIdle,
    TResult? Function(_SearchMovie value)? searchMovies,
  }) {
    return searchMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SearchIdle value)? searchIdle,
    TResult Function(_SearchMovie value)? searchMovies,
    required TResult orElse(),
  }) {
    if (searchMovies != null) {
      return searchMovies(this);
    }
    return orElse();
  }
}

abstract class _SearchMovie implements SearchEvent {
  const factory _SearchMovie() = _$_SearchMovie;
}

/// @nodoc
mixin _$SearchState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<SearchIdleModel>>> get searchIdleApiStatus =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<SearchResultModel>>>
      get searchResultApiStatus => throw _privateConstructorUsedError;
  List<SearchIdleModel> get searchIdleFinalList =>
      throw _privateConstructorUsedError;
  List<SearchResultModel> get searchResultFinalList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<MainFailure, List<SearchIdleModel>>> searchIdleApiStatus,
      Option<Either<MainFailure, List<SearchResultModel>>>
          searchResultApiStatus,
      List<SearchIdleModel> searchIdleFinalList,
      List<SearchResultModel> searchResultFinalList});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? searchIdleApiStatus = null,
    Object? searchResultApiStatus = null,
    Object? searchIdleFinalList = null,
    Object? searchResultFinalList = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      searchIdleApiStatus: null == searchIdleApiStatus
          ? _value.searchIdleApiStatus
          : searchIdleApiStatus // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<SearchIdleModel>>>,
      searchResultApiStatus: null == searchResultApiStatus
          ? _value.searchResultApiStatus
          : searchResultApiStatus // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<SearchResultModel>>>,
      searchIdleFinalList: null == searchIdleFinalList
          ? _value.searchIdleFinalList
          : searchIdleFinalList // ignore: cast_nullable_to_non_nullable
              as List<SearchIdleModel>,
      searchResultFinalList: null == searchResultFinalList
          ? _value.searchResultFinalList
          : searchResultFinalList // ignore: cast_nullable_to_non_nullable
              as List<SearchResultModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<MainFailure, List<SearchIdleModel>>> searchIdleApiStatus,
      Option<Either<MainFailure, List<SearchResultModel>>>
          searchResultApiStatus,
      List<SearchIdleModel> searchIdleFinalList,
      List<SearchResultModel> searchResultFinalList});
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_SearchState>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? searchIdleApiStatus = null,
    Object? searchResultApiStatus = null,
    Object? searchIdleFinalList = null,
    Object? searchResultFinalList = null,
  }) {
    return _then(_$_SearchState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      searchIdleApiStatus: null == searchIdleApiStatus
          ? _value.searchIdleApiStatus
          : searchIdleApiStatus // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<SearchIdleModel>>>,
      searchResultApiStatus: null == searchResultApiStatus
          ? _value.searchResultApiStatus
          : searchResultApiStatus // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<SearchResultModel>>>,
      searchIdleFinalList: null == searchIdleFinalList
          ? _value._searchIdleFinalList
          : searchIdleFinalList // ignore: cast_nullable_to_non_nullable
              as List<SearchIdleModel>,
      searchResultFinalList: null == searchResultFinalList
          ? _value._searchResultFinalList
          : searchResultFinalList // ignore: cast_nullable_to_non_nullable
              as List<SearchResultModel>,
    ));
  }
}

/// @nodoc

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {required this.isLoading,
      required this.searchIdleApiStatus,
      required this.searchResultApiStatus,
      required final List<SearchIdleModel> searchIdleFinalList,
      required final List<SearchResultModel> searchResultFinalList})
      : _searchIdleFinalList = searchIdleFinalList,
        _searchResultFinalList = searchResultFinalList;

  @override
  final bool isLoading;
  @override
  final Option<Either<MainFailure, List<SearchIdleModel>>> searchIdleApiStatus;
  @override
  final Option<Either<MainFailure, List<SearchResultModel>>>
      searchResultApiStatus;
  final List<SearchIdleModel> _searchIdleFinalList;
  @override
  List<SearchIdleModel> get searchIdleFinalList {
    if (_searchIdleFinalList is EqualUnmodifiableListView)
      return _searchIdleFinalList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchIdleFinalList);
  }

  final List<SearchResultModel> _searchResultFinalList;
  @override
  List<SearchResultModel> get searchResultFinalList {
    if (_searchResultFinalList is EqualUnmodifiableListView)
      return _searchResultFinalList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResultFinalList);
  }

  @override
  String toString() {
    return 'SearchState(isLoading: $isLoading, searchIdleApiStatus: $searchIdleApiStatus, searchResultApiStatus: $searchResultApiStatus, searchIdleFinalList: $searchIdleFinalList, searchResultFinalList: $searchResultFinalList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.searchIdleApiStatus, searchIdleApiStatus) ||
                other.searchIdleApiStatus == searchIdleApiStatus) &&
            (identical(other.searchResultApiStatus, searchResultApiStatus) ||
                other.searchResultApiStatus == searchResultApiStatus) &&
            const DeepCollectionEquality()
                .equals(other._searchIdleFinalList, _searchIdleFinalList) &&
            const DeepCollectionEquality()
                .equals(other._searchResultFinalList, _searchResultFinalList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      searchIdleApiStatus,
      searchResultApiStatus,
      const DeepCollectionEquality().hash(_searchIdleFinalList),
      const DeepCollectionEquality().hash(_searchResultFinalList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      __$$_SearchStateCopyWithImpl<_$_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
          {required final bool isLoading,
          required final Option<Either<MainFailure, List<SearchIdleModel>>>
              searchIdleApiStatus,
          required final Option<Either<MainFailure, List<SearchResultModel>>>
              searchResultApiStatus,
          required final List<SearchIdleModel> searchIdleFinalList,
          required final List<SearchResultModel> searchResultFinalList}) =
      _$_SearchState;

  @override
  bool get isLoading;
  @override
  Option<Either<MainFailure, List<SearchIdleModel>>> get searchIdleApiStatus;
  @override
  Option<Either<MainFailure, List<SearchResultModel>>>
      get searchResultApiStatus;
  @override
  List<SearchIdleModel> get searchIdleFinalList;
  @override
  List<SearchResultModel> get searchResultFinalList;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
