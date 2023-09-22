// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_tv_shows_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeTvShowModel _$HomeTvShowModelFromJson(Map<String, dynamic> json) {
  return _HomeTvShowModel.fromJson(json);
}

/// @nodoc
mixin _$HomeTvShowModel {
  @JsonKey(name: "poster_path")
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeTvShowModelCopyWith<HomeTvShowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeTvShowModelCopyWith<$Res> {
  factory $HomeTvShowModelCopyWith(
          HomeTvShowModel value, $Res Function(HomeTvShowModel) then) =
      _$HomeTvShowModelCopyWithImpl<$Res, HomeTvShowModel>;
  @useResult
  $Res call({@JsonKey(name: "poster_path") String imageUrl});
}

/// @nodoc
class _$HomeTvShowModelCopyWithImpl<$Res, $Val extends HomeTvShowModel>
    implements $HomeTvShowModelCopyWith<$Res> {
  _$HomeTvShowModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_HomeTvShowModelCopyWith<$Res>
    implements $HomeTvShowModelCopyWith<$Res> {
  factory _$$_HomeTvShowModelCopyWith(
          _$_HomeTvShowModel value, $Res Function(_$_HomeTvShowModel) then) =
      __$$_HomeTvShowModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "poster_path") String imageUrl});
}

/// @nodoc
class __$$_HomeTvShowModelCopyWithImpl<$Res>
    extends _$HomeTvShowModelCopyWithImpl<$Res, _$_HomeTvShowModel>
    implements _$$_HomeTvShowModelCopyWith<$Res> {
  __$$_HomeTvShowModelCopyWithImpl(
      _$_HomeTvShowModel _value, $Res Function(_$_HomeTvShowModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
  }) {
    return _then(_$_HomeTvShowModel(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeTvShowModel implements _HomeTvShowModel {
  const _$_HomeTvShowModel(
      {@JsonKey(name: "poster_path") required this.imageUrl});

  factory _$_HomeTvShowModel.fromJson(Map<String, dynamic> json) =>
      _$$_HomeTvShowModelFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String imageUrl;

  @override
  String toString() {
    return 'HomeTvShowModel(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeTvShowModel &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeTvShowModelCopyWith<_$_HomeTvShowModel> get copyWith =>
      __$$_HomeTvShowModelCopyWithImpl<_$_HomeTvShowModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeTvShowModelToJson(
      this,
    );
  }
}

abstract class _HomeTvShowModel implements HomeTvShowModel {
  const factory _HomeTvShowModel(
          {@JsonKey(name: "poster_path") required final String imageUrl}) =
      _$_HomeTvShowModel;

  factory _HomeTvShowModel.fromJson(Map<String, dynamic> json) =
      _$_HomeTvShowModel.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_HomeTvShowModelCopyWith<_$_HomeTvShowModel> get copyWith =>
      throw _privateConstructorUsedError;
}
