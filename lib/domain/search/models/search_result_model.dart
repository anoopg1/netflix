import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_result_model.freezed.dart';
part 'search_result_model.g.dart';
@freezed
class SearchResultModel with _$SearchResultModel{
  const factory SearchResultModel({
    @JsonKey(name:"poster_path")
    required String imageUrl,
  }) = _SearchResultModel;

  factory SearchResultModel.fromJson(Map<String, dynamic> json) => _$SearchResultModelFromJson(json);
}