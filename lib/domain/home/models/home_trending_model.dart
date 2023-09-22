
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_trending_model.freezed.dart';
part 'home_trending_model.g.dart';
@freezed
class HomeTrendingModel with _$HomeTrendingModel{
  const factory HomeTrendingModel({
     @JsonKey(name: "poster_path") 
    required String imageUrl
  }) = _HomeTrendingModel;

  factory HomeTrendingModel.fromJson(Map<String, dynamic> json) => _$HomeTrendingModelFromJson(json);
}