import 'package:freezed_annotation/freezed_annotation.dart';
part 'coming_soon_model.freezed.dart';
part 'coming_soon_model.g.dart';
@freezed
class ComingSoonModel with _$ComingSoonModel{
  const factory ComingSoonModel({
    @JsonKey(name: "release_date")
    required String date,
    @JsonKey(name: "poster_path")
    required String imageUrl,
    @JsonKey(name: "original_title")
    required String movieName,
    @JsonKey(name: "overview")
    required String description,
  }) = _ComingSoonModel;

  factory ComingSoonModel.fromJson(Map<String, dynamic> json) => _$ComingSoonModelFromJson(json);
}