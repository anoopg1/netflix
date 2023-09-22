import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloads_model.g.dart';
part 'downloads_model.freezed.dart';

@freezed
class Downloads with _$Downloads {
  const factory Downloads({
    @JsonKey(name: "poster_path") required String? posterPath,
    @JsonKey(name: "original_title") required String? movieTitle,
  }) = _Downloads;

  factory Downloads.fromJson(Map<String, dynamic> json) =>
      _$DownloadsFromJson(json);
}
