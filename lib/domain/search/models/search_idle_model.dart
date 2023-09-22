import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_idle_model.freezed.dart';
part 'search_idle_model.g.dart';

@freezed
class SearchIdleModel with _$SearchIdleModel{
  const factory SearchIdleModel({
    @JsonKey(name:"poster_path" )
    required String imageUrl,
    @JsonKey(name: "original_title")
    required String movieTitle,

  }) = _SearchIdleModel;

  factory SearchIdleModel.fromJson(Map<String, dynamic> json) => _$SearchIdleModelFromJson(json);
}