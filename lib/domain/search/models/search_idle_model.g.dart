// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_idle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchIdleModel _$$_SearchIdleModelFromJson(Map<String, dynamic> json) =>
    _$_SearchIdleModel(
      imageUrl: json['poster_path'] as String,
      movieTitle: json['original_title'] as String,
    );

Map<String, dynamic> _$$_SearchIdleModelToJson(_$_SearchIdleModel instance) =>
    <String, dynamic>{
      'poster_path': instance.imageUrl,
      'original_title': instance.movieTitle,
    };
