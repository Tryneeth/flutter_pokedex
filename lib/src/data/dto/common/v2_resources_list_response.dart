import 'package:freezed_annotation/freezed_annotation.dart';

part 'v2_resources_list_response.g.dart';

@JsonSerializable(
  genericArgumentFactories: true,
  constructor: '_',
  createToJson: false,
)
class V2ResourcesListResponse<T> {
  const V2ResourcesListResponse._({
    required this.results,
    required this.totalCount,
  });

  factory V2ResourcesListResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$V2ResourcesListResponseFromJson(json, fromJsonT);

  @JsonKey(name: 'results')
  final T results;
  @JsonKey(name: 'count')
  final int totalCount;
}
