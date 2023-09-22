import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_latest_model.freezed.dart';
part 'home_latest_model.g.dart';

@freezed
class HomeLatestModel with _$HomeLatestModel{
  const factory HomeLatestModel({
     @JsonKey(name: "poster_path") 
    required String imageUrl,
  }) = _HomeLatestModel;

  factory HomeLatestModel.fromJson(Map<String, dynamic> json) => _$HomeLatestModelFromJson(json);
}