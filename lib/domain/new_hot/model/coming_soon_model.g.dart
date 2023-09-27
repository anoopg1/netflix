// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coming_soon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ComingSoonModel _$$_ComingSoonModelFromJson(Map<String, dynamic> json) =>
    _$_ComingSoonModel(
      date: json['release_date'] as String,
      imageUrl: json['poster_path'] as String,
      movieName: json['original_title'] as String,
      description: json['overview'] as String,
    );

Map<String, dynamic> _$$_ComingSoonModelToJson(_$_ComingSoonModel instance) =>
    <String, dynamic>{
      'release_date': instance.date,
      'poster_path': instance.imageUrl,
      'original_title': instance.movieName,
      'overview': instance.description,
    };
