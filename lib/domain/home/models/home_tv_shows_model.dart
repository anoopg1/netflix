import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_tv_shows_model.freezed.dart';
part 'home_tv_shows_model.g.dart';

@freezed
class HomeTvShowModel with _$HomeTvShowModel {
  const factory HomeTvShowModel({
     @JsonKey(name: "poster_path") 
    required String imageUrl,
  }) = _HomeTvShowModel;

  factory HomeTvShowModel.fromJson(Map<String, dynamic> json) =>
      _$HomeTvShowModelFromJson(json);
}
