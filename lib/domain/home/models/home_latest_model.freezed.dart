// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_latest_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeLatestModel _$HomeLatestModelFromJson(Map<String, dynamic> json) {
  return _HomeLatestModel.fromJson(json);
}

/// @nodoc
mixin _$HomeLatestModel {
  @JsonKey(name: "poster_path")
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeLatestModelCopyWith<HomeLatestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeLatestModelCopyWith<$Res> {
  factory $HomeLatestModelCopyWith(
          HomeLatestModel value, $Res Function(HomeLatestModel) then) =
      _$HomeLatestModelCopyWithImpl<$Res, HomeLatestModel>;
  @useResult
  $Res call({@JsonKey(name: "poster_path") String imageUrl});
}

/// @nodoc
class _$HomeLatestModelCopyWithImpl<$Res, $Val extends HomeLatestModel>
    implements $HomeLatestModelCopyWith<$Res> {
  _$HomeLatestModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_HomeLatestModelCopyWith<$Res>
    implements $HomeLatestModelCopyWith<$Res> {
  factory _$$_HomeLatestModelCopyWith(
          _$_HomeLatestModel value, $Res Function(_$_HomeLatestModel) then) =
      __$$_HomeLatestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "poster_path") String imageUrl});
}

/// @nodoc
class __$$_HomeLatestModelCopyWithImpl<$Res>
    extends _$HomeLatestModelCopyWithImpl<$Res, _$_HomeLatestModel>
    implements _$$_HomeLatestModelCopyWith<$Res> {
  __$$_HomeLatestModelCopyWithImpl(
      _$_HomeLatestModel _value, $Res Function(_$_HomeLatestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
  }) {
    return _then(_$_HomeLatestModel(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeLatestModel implements _HomeLatestModel {
  const _$_HomeLatestModel(
      {@JsonKey(name: "poster_path") required this.imageUrl});

  factory _$_HomeLatestModel.fromJson(Map<String, dynamic> json) =>
      _$$_HomeLatestModelFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String imageUrl;

  @override
  String toString() {
    return 'HomeLatestModel(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeLatestModel &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeLatestModelCopyWith<_$_HomeLatestModel> get copyWith =>
      __$$_HomeLatestModelCopyWithImpl<_$_HomeLatestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeLatestModelToJson(
      this,
    );
  }
}

abstract class _HomeLatestModel implements HomeLatestModel {
  const factory _HomeLatestModel(
          {@JsonKey(name: "poster_path") required final String imageUrl}) =
      _$_HomeLatestModel;

  factory _HomeLatestModel.fromJson(Map<String, dynamic> json) =
      _$_HomeLatestModel.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_HomeLatestModelCopyWith<_$_HomeLatestModel> get copyWith =>
      throw _privateConstructorUsedError;
}
