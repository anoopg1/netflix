// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'everyone_watching_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EveryoneWatchingModel _$$_EveryoneWatchingModelFromJson(
        Map<String, dynamic> json) =>
    _$_EveryoneWatchingModel(
      imageUrl: json['poster_path'] as String,
      movieName: json['original_title'] as String,
    );

Map<String, dynamic> _$$_EveryoneWatchingModelToJson(
        _$_EveryoneWatchingModel instance) =>
    <String, dynamic>{
      'poster_path': instance.imageUrl,
      'original_title': instance.movieName,
    };
