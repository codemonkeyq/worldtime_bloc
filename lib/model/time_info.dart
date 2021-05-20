import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_info.freezed.dart';
part 'time_info.g.dart';

@freezed
 class TimeInfo with _$TimeInfo {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory TimeInfo({
    @Default('') String abbreviation,
    @Default('') String clientIp,
    @Default('') String datetime,
    @Default(0) int dayOfWeek,
    @Default(0) int dayOfYear,
    @Default(false) bool dst,
    @Default('') String dstFrom,
    @Default(0) int dstOffset,
    @Default('') String dstUntil,
    @Default(0) int rawOffset,
    @Default('') String timezone,
    @Default(0) unixtime,
    @Default('') utcDatetime,
    @Default('') utcOffset,
    @Default(0) weekNumber
  }) = _TimeInfo;



  factory TimeInfo.fromJson(Map<String, dynamic> json) =>
      _$TimeInfoFromJson(json);
}