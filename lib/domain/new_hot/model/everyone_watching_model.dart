import 'package:freezed_annotation/freezed_annotation.dart';
part 'everyone_watching_model.g.dart';
part 'everyone_watching_model.freezed.dart';

@freezed
class EveryoneWatchingModel with _$EveryoneWatchingModel{
  const factory EveryoneWatchingModel({
    @JsonKey(name: "poster_path")
    required String imageUrl,
    @JsonKey(name: "original_title")
    required String movieName,
  }) = _EveryoneWatchingModel;

  factory EveryoneWatchingModel.fromJson(Map<String, dynamic> json) => _$EveryoneWatchingModelFromJson(json);
}