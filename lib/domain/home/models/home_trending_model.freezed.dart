// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_trending_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeTrendingModel _$HomeTrendingModelFromJson(Map<String, dynamic> json) {
  return _HomeTrendingModel.fromJson(json);
}

/// @nodoc
mixin _$HomeTrendingModel {
  @JsonKey(name: "poster_path")
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeTrendingModelCopyWith<HomeTrendingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeTrendingModelCopyWith<$Res> {
  factory $HomeTrendingModelCopyWith(
          HomeTrendingModel value, $Res Function(HomeTrendingModel) then) =
      _$HomeTrendingModelCopyWithImpl<$Res, HomeTrendingModel>;
  @useResult
  $Res call({@JsonKey(name: "poster_path") String imageUrl});
}

/// @nodoc
class _$HomeTrendingModelCopyWithImpl<$Res, $Val extends HomeTrendingModel>
    implements $HomeTrendingModelCopyWith<$Res> {
  _$HomeTrendingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeTrendingModelCopyWith<$Res>
    implements $HomeTrendingModelCopyWith<$Res> {
  factory _$$_HomeTrendingModelCopyWith(_$_HomeTrendingModel value,
          $Res Function(_$_HomeTrendingModel) then) =
      __$$_HomeTrendingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "poster_path") String imageUrl});
}

/// @nodoc
class __$$_HomeTrendingModelCopyWithImpl<$Res>
    extends _$HomeTrendingModelCopyWithImpl<$Res, _$_HomeTrendingModel>
    implements _$$_HomeTrendingModelCopyWith<$Res> {
  __$$_HomeTrendingModelCopyWithImpl(
      _$_HomeTrendingModel _value, $Res Function(_$_HomeTrendingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
  }) {
    return _then(_$_HomeTrendingModel(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeTrendingModel implements _HomeTrendingModel {
  const _$_HomeTrendingModel(
      {@JsonKey(name: "poster_path") required this.imageUrl});

  factory _$_HomeTrendingModel.fromJson(Map<String, dynamic> json) =>
      _$$_HomeTrendingModelFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String imageUrl;

  @override
  String toString() {
    return 'HomeTrendingModel(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeTrendingModel &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeTrendingModelCopyWith<_$_HomeTrendingModel> get copyWith =>
      __$$_HomeTrendingModelCopyWithImpl<_$_HomeTrendingModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeTrendingModelToJson(
      this,
    );
  }
}

abstract class _HomeTrendingModel implements HomeTrendingModel {
  const factory _HomeTrendingModel(
          {@JsonKey(name: "poster_path") required final String imageUrl}) =
      _$_HomeTrendingModel;

  factory _HomeTrendingModel.fromJson(Map<String, dynamic> json) =
      _$_HomeTrendingModel.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_HomeTrendingModelCopyWith<_$_HomeTrendingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
