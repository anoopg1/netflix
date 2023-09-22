// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResultModel _$SearchResultModelFromJson(Map<String, dynamic> json) {
  return _SearchResultModel.fromJson(json);
}

/// @nodoc
mixin _$SearchResultModel {
  @JsonKey(name: "poster_path")
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultModelCopyWith<SearchResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultModelCopyWith<$Res> {
  factory $SearchResultModelCopyWith(
          SearchResultModel value, $Res Function(SearchResultModel) then) =
      _$SearchResultModelCopyWithImpl<$Res, SearchResultModel>;
  @useResult
  $Res call({@JsonKey(name: "poster_path") String imageUrl});
}

/// @nodoc
class _$SearchResultModelCopyWithImpl<$Res, $Val extends SearchResultModel>
    implements $SearchResultModelCopyWith<$Res> {
  _$SearchResultModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_SearchResultModelCopyWith<$Res>
    implements $SearchResultModelCopyWith<$Res> {
  factory _$$_SearchResultModelCopyWith(_$_SearchResultModel value,
          $Res Function(_$_SearchResultModel) then) =
      __$$_SearchResultModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "poster_path") String imageUrl});
}

/// @nodoc
class __$$_SearchResultModelCopyWithImpl<$Res>
    extends _$SearchResultModelCopyWithImpl<$Res, _$_SearchResultModel>
    implements _$$_SearchResultModelCopyWith<$Res> {
  __$$_SearchResultModelCopyWithImpl(
      _$_SearchResultModel _value, $Res Function(_$_SearchResultModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
  }) {
    return _then(_$_SearchResultModel(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchResultModel implements _SearchResultModel {
  const _$_SearchResultModel(
      {@JsonKey(name: "poster_path") required this.imageUrl});

  factory _$_SearchResultModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchResultModelFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String imageUrl;

  @override
  String toString() {
    return 'SearchResultModel(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchResultModel &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchResultModelCopyWith<_$_SearchResultModel> get copyWith =>
      __$$_SearchResultModelCopyWithImpl<_$_SearchResultModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchResultModelToJson(
      this,
    );
  }
}

abstract class _SearchResultModel implements SearchResultModel {
  const factory _SearchResultModel(
          {@JsonKey(name: "poster_path") required final String imageUrl}) =
      _$_SearchResultModel;

  factory _SearchResultModel.fromJson(Map<String, dynamic> json) =
      _$_SearchResultModel.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_SearchResultModelCopyWith<_$_SearchResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}
