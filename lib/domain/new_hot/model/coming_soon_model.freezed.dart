// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coming_soon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComingSoonModel _$ComingSoonModelFromJson(Map<String, dynamic> json) {
  return _ComingSoonModel.fromJson(json);
}

/// @nodoc
mixin _$ComingSoonModel {
  @JsonKey(name: "release_date")
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "original_title")
  String get movieName => throw _privateConstructorUsedError;
  @JsonKey(name: "overview")
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComingSoonModelCopyWith<ComingSoonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComingSoonModelCopyWith<$Res> {
  factory $ComingSoonModelCopyWith(
          ComingSoonModel value, $Res Function(ComingSoonModel) then) =
      _$ComingSoonModelCopyWithImpl<$Res, ComingSoonModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "release_date") String date,
      @JsonKey(name: "poster_path") String imageUrl,
      @JsonKey(name: "original_title") String movieName,
      @JsonKey(name: "overview") String description});
}

/// @nodoc
class _$ComingSoonModelCopyWithImpl<$Res, $Val extends ComingSoonModel>
    implements $ComingSoonModelCopyWith<$Res> {
  _$ComingSoonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? imageUrl = null,
    Object? movieName = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      movieName: null == movieName
          ? _value.movieName
          : movieName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ComingSoonModelCopyWith<$Res>
    implements $ComingSoonModelCopyWith<$Res> {
  factory _$$_ComingSoonModelCopyWith(
          _$_ComingSoonModel value, $Res Function(_$_ComingSoonModel) then) =
      __$$_ComingSoonModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "release_date") String date,
      @JsonKey(name: "poster_path") String imageUrl,
      @JsonKey(name: "original_title") String movieName,
      @JsonKey(name: "overview") String description});
}

/// @nodoc
class __$$_ComingSoonModelCopyWithImpl<$Res>
    extends _$ComingSoonModelCopyWithImpl<$Res, _$_ComingSoonModel>
    implements _$$_ComingSoonModelCopyWith<$Res> {
  __$$_ComingSoonModelCopyWithImpl(
      _$_ComingSoonModel _value, $Res Function(_$_ComingSoonModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? imageUrl = null,
    Object? movieName = null,
    Object? description = null,
  }) {
    return _then(_$_ComingSoonModel(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      movieName: null == movieName
          ? _value.movieName
          : movieName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ComingSoonModel implements _ComingSoonModel {
  const _$_ComingSoonModel(
      {@JsonKey(name: "release_date") required this.date,
      @JsonKey(name: "poster_path") required this.imageUrl,
      @JsonKey(name: "original_title") required this.movieName,
      @JsonKey(name: "overview") required this.description});

  factory _$_ComingSoonModel.fromJson(Map<String, dynamic> json) =>
      _$$_ComingSoonModelFromJson(json);

  @override
  @JsonKey(name: "release_date")
  final String date;
  @override
  @JsonKey(name: "poster_path")
  final String imageUrl;
  @override
  @JsonKey(name: "original_title")
  final String movieName;
  @override
  @JsonKey(name: "overview")
  final String description;

  @override
  String toString() {
    return 'ComingSoonModel(date: $date, imageUrl: $imageUrl, movieName: $movieName, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComingSoonModel &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.movieName, movieName) ||
                other.movieName == movieName) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, imageUrl, movieName, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComingSoonModelCopyWith<_$_ComingSoonModel> get copyWith =>
      __$$_ComingSoonModelCopyWithImpl<_$_ComingSoonModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComingSoonModelToJson(
      this,
    );
  }
}

abstract class _ComingSoonModel implements ComingSoonModel {
  const factory _ComingSoonModel(
          {@JsonKey(name: "release_date") required final String date,
          @JsonKey(name: "poster_path") required final String imageUrl,
          @JsonKey(name: "original_title") required final String movieName,
          @JsonKey(name: "overview") required final String description}) =
      _$_ComingSoonModel;

  factory _ComingSoonModel.fromJson(Map<String, dynamic> json) =
      _$_ComingSoonModel.fromJson;

  @override
  @JsonKey(name: "release_date")
  String get date;
  @override
  @JsonKey(name: "poster_path")
  String get imageUrl;
  @override
  @JsonKey(name: "original_title")
  String get movieName;
  @override
  @JsonKey(name: "overview")
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_ComingSoonModelCopyWith<_$_ComingSoonModel> get copyWith =>
      throw _privateConstructorUsedError;
}
