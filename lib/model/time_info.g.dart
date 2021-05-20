// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeInfo _$_$_TimeInfoFromJson(Map<String, dynamic> json) {
  return _$_TimeInfo(
    abbreviation: json['abbreviation'] as String? ?? '',
    clientIp: json['client_ip'] as String? ?? '',
    datetime: json['datetime'] as String? ?? '',
    dayOfWeek: json['day_of_week'] as int? ?? 0,
    dayOfYear: json['day_of_year'] as int? ?? 0,
    dst: json['dst'] as bool? ?? false,
    dstFrom: json['dst_from'] as String? ?? '',
    dstOffset: json['dst_offset'] as int? ?? 0,
    dstUntil: json['dst_until'] as String? ?? '',
    rawOffset: json['raw_offset'] as int? ?? 0,
    timezone: json['timezone'] as String? ?? '',
    unixtime: json['unixtime'] ?? 0,
    utcDatetime: json['utc_datetime'] ?? '',
    utcOffset: json['utc_offset'] ?? '',
    weekNumber: json['week_number'] ?? 0,
  );
}

Map<String, dynamic> _$_$_TimeInfoToJson(_$_TimeInfo instance) =>
    <String, dynamic>{
      'abbreviation': instance.abbreviation,
      'client_ip': instance.clientIp,
      'datetime': instance.datetime,
      'day_of_week': instance.dayOfWeek,
      'day_of_year': instance.dayOfYear,
      'dst': instance.dst,
      'dst_from': instance.dstFrom,
      'dst_offset': instance.dstOffset,
      'dst_until': instance.dstUntil,
      'raw_offset': instance.rawOffset,
      'timezone': instance.timezone,
      'unixtime': instance.unixtime,
      'utc_datetime': instance.utcDatetime,
      'utc_offset': instance.utcOffset,
      'week_number': instance.weekNumber,
    };
