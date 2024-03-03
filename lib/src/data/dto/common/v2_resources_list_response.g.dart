// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_resources_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V2ResourcesListResponse<T> _$V2ResourcesListResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    V2ResourcesListResponse<T>._(
      results: fromJsonT(json['results']),
      totalCount: json['count'] as int,
    );
