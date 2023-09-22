// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_idle_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchIdleModel _$SearchIdleModelFromJson(Map<String, dynamic> json) {
  return _SearchIdleModel.fromJson(json);
}

/// @nodoc
mixin _$SearchIdleModel {
  @JsonKey(name: "poster_path")
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "original_title")
  String get movieTitle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchIdleModelCopyWith<SearchIdleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchIdleModelCopyWith<$Res> {
  factory $SearchIdleModelCopyWith(
          SearchIdleModel value, $Res Function(SearchIdleModel) then) =
      _$SearchIdleModelCopyWithImpl<$Res, SearchIdleModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "poster_path") String imageUrl,
      @JsonKey(name: "original_title") String movieTitle});
}

/// @nodoc
class _$SearchIdleModelCopyWithImpl<$Res, $Val extends SearchIdleModel>
    implements $SearchIdleModelCopyWith<$Res> {
  _$SearchIdleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? movieTitle = null,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      movieTitle: null == movieTitle
          ? _value.movieTitle
          : movieTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchIdleModelCopyWith<$Res>
    implements $SearchIdleModelCopyWith<$Res> {
  factory _$$_SearchIdleModelCopyWith(
          _$_SearchIdleModel value, $Res Function(_$_SearchIdleModel) then) =
      __$$_SearchIdleModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "poster_path") String imageUrl,
      @JsonKey(name: "original_title") String movieTitle});
}

/// @nodoc
class __$$_SearchIdleModelCopyWithImpl<$Res>
    extends _$SearchIdleModelCopyWithImpl<$Res, _$_SearchIdleModel>
    implements _$$_SearchIdleModelCopyWith<$Res> {
  __$$_SearchIdleModelCopyWithImpl(
      _$_SearchIdleModel _value, $Res Function(_$_SearchIdleModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? movieTitle = null,
  }) {
    return _then(_$_SearchIdleModel(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      movieTitle: null == movieTitle
          ? _value.movieTitle
          : movieTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchIdleModel implements _SearchIdleModel {
  const _$_SearchIdleModel(
      {@JsonKey(name: "poster_path") required this.imageUrl,
      @JsonKey(name: "original_title") required this.movieTitle});

  factory _$_SearchIdleModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchIdleModelFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String imageUrl;
  @override
  @JsonKey(name: "original_title")
  final String movieTitle;

  @override
  String toString() {
    return 'SearchIdleModel(imageUrl: $imageUrl, movieTitle: $movieTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchIdleModel &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.movieTitle, movieTitle) ||
                other.movieTitle == movieTitle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, movieTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchIdleModelCopyWith<_$_SearchIdleModel> get copyWith =>
      __$$_SearchIdleModelCopyWithImpl<_$_SearchIdleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchIdleModelToJson(
      this,
    );
  }
}

abstract class _SearchIdleModel implements SearchIdleModel {
  const factory _SearchIdleModel(
          {@JsonKey(name: "poster_path") required final String imageUrl,
          @JsonKey(name: "original_title") required final String movieTitle}) =
      _$_SearchIdleModel;

  factory _SearchIdleModel.fromJson(Map<String, dynamic> json) =
      _$_SearchIdleModel.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String get imageUrl;
  @override
  @JsonKey(name: "original_title")
  String get movieTitle;
  @override
  @JsonKey(ignore: true)
  _$$_SearchIdleModelCopyWith<_$_SearchIdleModel> get copyWith =>
      throw _privateConstructorUsedError;
}
