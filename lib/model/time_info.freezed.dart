// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'time_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimeInfo _$TimeInfoFromJson(Map<String, dynamic> json) {
  return _TimeInfo.fromJson(json);
}

/// @nodoc
class _$TimeInfoTearOff {
  const _$TimeInfoTearOff();

  _TimeInfo call(
      {String abbreviation = '',
      String clientIp = '',
      String datetime = '',
      int dayOfWeek = 0,
      int dayOfYear = 0,
      bool dst = false,
      String dstFrom = '',
      int dstOffset = 0,
      String dstUntil = '',
      int rawOffset = 0,
      String timezone = '',
      dynamic unixtime = 0,
      dynamic utcDatetime = '',
      dynamic utcOffset = '',
      dynamic weekNumber = 0}) {
    return _TimeInfo(
      abbreviation: abbreviation,
      clientIp: clientIp,
      datetime: datetime,
      dayOfWeek: dayOfWeek,
      dayOfYear: dayOfYear,
      dst: dst,
      dstFrom: dstFrom,
      dstOffset: dstOffset,
      dstUntil: dstUntil,
      rawOffset: rawOffset,
      timezone: timezone,
      unixtime: unixtime,
      utcDatetime: utcDatetime,
      utcOffset: utcOffset,
      weekNumber: weekNumber,
    );
  }

  TimeInfo fromJson(Map<String, Object> json) {
    return TimeInfo.fromJson(json);
  }
}

/// @nodoc
const $TimeInfo = _$TimeInfoTearOff();

/// @nodoc
mixin _$TimeInfo {
  String get abbreviation => throw _privateConstructorUsedError;
  String get clientIp => throw _privateConstructorUsedError;
  String get datetime => throw _privateConstructorUsedError;
  int get dayOfWeek => throw _privateConstructorUsedError;
  int get dayOfYear => throw _privateConstructorUsedError;
  bool get dst => throw _privateConstructorUsedError;
  String get dstFrom => throw _privateConstructorUsedError;
  int get dstOffset => throw _privateConstructorUsedError;
  String get dstUntil => throw _privateConstructorUsedError;
  int get rawOffset => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  dynamic get unixtime => throw _privateConstructorUsedError;
  dynamic get utcDatetime => throw _privateConstructorUsedError;
  dynamic get utcOffset => throw _privateConstructorUsedError;
  dynamic get weekNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeInfoCopyWith<TimeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeInfoCopyWith<$Res> {
  factory $TimeInfoCopyWith(TimeInfo value, $Res Function(TimeInfo) then) =
      _$TimeInfoCopyWithImpl<$Res>;
  $Res call(
      {String abbreviation,
      String clientIp,
      String datetime,
      int dayOfWeek,
      int dayOfYear,
      bool dst,
      String dstFrom,
      int dstOffset,
      String dstUntil,
      int rawOffset,
      String timezone,
      dynamic unixtime,
      dynamic utcDatetime,
      dynamic utcOffset,
      dynamic weekNumber});
}

/// @nodoc
class _$TimeInfoCopyWithImpl<$Res> implements $TimeInfoCopyWith<$Res> {
  _$TimeInfoCopyWithImpl(this._value, this._then);

  final TimeInfo _value;
  // ignore: unused_field
  final $Res Function(TimeInfo) _then;

  @override
  $Res call({
    Object? abbreviation = freezed,
    Object? clientIp = freezed,
    Object? datetime = freezed,
    Object? dayOfWeek = freezed,
    Object? dayOfYear = freezed,
    Object? dst = freezed,
    Object? dstFrom = freezed,
    Object? dstOffset = freezed,
    Object? dstUntil = freezed,
    Object? rawOffset = freezed,
    Object? timezone = freezed,
    Object? unixtime = freezed,
    Object? utcDatetime = freezed,
    Object? utcOffset = freezed,
    Object? weekNumber = freezed,
  }) {
    return _then(_value.copyWith(
      abbreviation: abbreviation == freezed
          ? _value.abbreviation
          : abbreviation // ignore: cast_nullable_to_non_nullable
              as String,
      clientIp: clientIp == freezed
          ? _value.clientIp
          : clientIp // ignore: cast_nullable_to_non_nullable
              as String,
      datetime: datetime == freezed
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as String,
      dayOfWeek: dayOfWeek == freezed
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as int,
      dayOfYear: dayOfYear == freezed
          ? _value.dayOfYear
          : dayOfYear // ignore: cast_nullable_to_non_nullable
              as int,
      dst: dst == freezed
          ? _value.dst
          : dst // ignore: cast_nullable_to_non_nullable
              as bool,
      dstFrom: dstFrom == freezed
          ? _value.dstFrom
          : dstFrom // ignore: cast_nullable_to_non_nullable
              as String,
      dstOffset: dstOffset == freezed
          ? _value.dstOffset
          : dstOffset // ignore: cast_nullable_to_non_nullable
              as int,
      dstUntil: dstUntil == freezed
          ? _value.dstUntil
          : dstUntil // ignore: cast_nullable_to_non_nullable
              as String,
      rawOffset: rawOffset == freezed
          ? _value.rawOffset
          : rawOffset // ignore: cast_nullable_to_non_nullable
              as int,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      unixtime: unixtime == freezed
          ? _value.unixtime
          : unixtime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      utcDatetime: utcDatetime == freezed
          ? _value.utcDatetime
          : utcDatetime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      utcOffset: utcOffset == freezed
          ? _value.utcOffset
          : utcOffset // ignore: cast_nullable_to_non_nullable
              as dynamic,
      weekNumber: weekNumber == freezed
          ? _value.weekNumber
          : weekNumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$TimeInfoCopyWith<$Res> implements $TimeInfoCopyWith<$Res> {
  factory _$TimeInfoCopyWith(_TimeInfo value, $Res Function(_TimeInfo) then) =
      __$TimeInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String abbreviation,
      String clientIp,
      String datetime,
      int dayOfWeek,
      int dayOfYear,
      bool dst,
      String dstFrom,
      int dstOffset,
      String dstUntil,
      int rawOffset,
      String timezone,
      dynamic unixtime,
      dynamic utcDatetime,
      dynamic utcOffset,
      dynamic weekNumber});
}

/// @nodoc
class __$TimeInfoCopyWithImpl<$Res> extends _$TimeInfoCopyWithImpl<$Res>
    implements _$TimeInfoCopyWith<$Res> {
  __$TimeInfoCopyWithImpl(_TimeInfo _value, $Res Function(_TimeInfo) _then)
      : super(_value, (v) => _then(v as _TimeInfo));

  @override
  _TimeInfo get _value => super._value as _TimeInfo;

  @override
  $Res call({
    Object? abbreviation = freezed,
    Object? clientIp = freezed,
    Object? datetime = freezed,
    Object? dayOfWeek = freezed,
    Object? dayOfYear = freezed,
    Object? dst = freezed,
    Object? dstFrom = freezed,
    Object? dstOffset = freezed,
    Object? dstUntil = freezed,
    Object? rawOffset = freezed,
    Object? timezone = freezed,
    Object? unixtime = freezed,
    Object? utcDatetime = freezed,
    Object? utcOffset = freezed,
    Object? weekNumber = freezed,
  }) {
    return _then(_TimeInfo(
      abbreviation: abbreviation == freezed
          ? _value.abbreviation
          : abbreviation // ignore: cast_nullable_to_non_nullable
              as String,
      clientIp: clientIp == freezed
          ? _value.clientIp
          : clientIp // ignore: cast_nullable_to_non_nullable
              as String,
      datetime: datetime == freezed
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as String,
      dayOfWeek: dayOfWeek == freezed
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as int,
      dayOfYear: dayOfYear == freezed
          ? _value.dayOfYear
          : dayOfYear // ignore: cast_nullable_to_non_nullable
              as int,
      dst: dst == freezed
          ? _value.dst
          : dst // ignore: cast_nullable_to_non_nullable
              as bool,
      dstFrom: dstFrom == freezed
          ? _value.dstFrom
          : dstFrom // ignore: cast_nullable_to_non_nullable
              as String,
      dstOffset: dstOffset == freezed
          ? _value.dstOffset
          : dstOffset // ignore: cast_nullable_to_non_nullable
              as int,
      dstUntil: dstUntil == freezed
          ? _value.dstUntil
          : dstUntil // ignore: cast_nullable_to_non_nullable
              as String,
      rawOffset: rawOffset == freezed
          ? _value.rawOffset
          : rawOffset // ignore: cast_nullable_to_non_nullable
              as int,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      unixtime: unixtime == freezed ? _value.unixtime : unixtime,
      utcDatetime: utcDatetime == freezed ? _value.utcDatetime : utcDatetime,
      utcOffset: utcOffset == freezed ? _value.utcOffset : utcOffset,
      weekNumber: weekNumber == freezed ? _value.weekNumber : weekNumber,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_TimeInfo with DiagnosticableTreeMixin implements _TimeInfo {
  const _$_TimeInfo(
      {this.abbreviation = '',
      this.clientIp = '',
      this.datetime = '',
      this.dayOfWeek = 0,
      this.dayOfYear = 0,
      this.dst = false,
      this.dstFrom = '',
      this.dstOffset = 0,
      this.dstUntil = '',
      this.rawOffset = 0,
      this.timezone = '',
      this.unixtime = 0,
      this.utcDatetime = '',
      this.utcOffset = '',
      this.weekNumber = 0});

  factory _$_TimeInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_TimeInfoFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String abbreviation;
  @JsonKey(defaultValue: '')
  @override
  final String clientIp;
  @JsonKey(defaultValue: '')
  @override
  final String datetime;
  @JsonKey(defaultValue: 0)
  @override
  final int dayOfWeek;
  @JsonKey(defaultValue: 0)
  @override
  final int dayOfYear;
  @JsonKey(defaultValue: false)
  @override
  final bool dst;
  @JsonKey(defaultValue: '')
  @override
  final String dstFrom;
  @JsonKey(defaultValue: 0)
  @override
  final int dstOffset;
  @JsonKey(defaultValue: '')
  @override
  final String dstUntil;
  @JsonKey(defaultValue: 0)
  @override
  final int rawOffset;
  @JsonKey(defaultValue: '')
  @override
  final String timezone;
  @JsonKey(defaultValue: 0)
  @override
  final dynamic unixtime;
  @JsonKey(defaultValue: '')
  @override
  final dynamic utcDatetime;
  @JsonKey(defaultValue: '')
  @override
  final dynamic utcOffset;
  @JsonKey(defaultValue: 0)
  @override
  final dynamic weekNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimeInfo(abbreviation: $abbreviation, clientIp: $clientIp, datetime: $datetime, dayOfWeek: $dayOfWeek, dayOfYear: $dayOfYear, dst: $dst, dstFrom: $dstFrom, dstOffset: $dstOffset, dstUntil: $dstUntil, rawOffset: $rawOffset, timezone: $timezone, unixtime: $unixtime, utcDatetime: $utcDatetime, utcOffset: $utcOffset, weekNumber: $weekNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimeInfo'))
      ..add(DiagnosticsProperty('abbreviation', abbreviation))
      ..add(DiagnosticsProperty('clientIp', clientIp))
      ..add(DiagnosticsProperty('datetime', datetime))
      ..add(DiagnosticsProperty('dayOfWeek', dayOfWeek))
      ..add(DiagnosticsProperty('dayOfYear', dayOfYear))
      ..add(DiagnosticsProperty('dst', dst))
      ..add(DiagnosticsProperty('dstFrom', dstFrom))
      ..add(DiagnosticsProperty('dstOffset', dstOffset))
      ..add(DiagnosticsProperty('dstUntil', dstUntil))
      ..add(DiagnosticsProperty('rawOffset', rawOffset))
      ..add(DiagnosticsProperty('timezone', timezone))
      ..add(DiagnosticsProperty('unixtime', unixtime))
      ..add(DiagnosticsProperty('utcDatetime', utcDatetime))
      ..add(DiagnosticsProperty('utcOffset', utcOffset))
      ..add(DiagnosticsProperty('weekNumber', weekNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TimeInfo &&
            (identical(other.abbreviation, abbreviation) ||
                const DeepCollectionEquality()
                    .equals(other.abbreviation, abbreviation)) &&
            (identical(other.clientIp, clientIp) ||
                const DeepCollectionEquality()
                    .equals(other.clientIp, clientIp)) &&
            (identical(other.datetime, datetime) ||
                const DeepCollectionEquality()
                    .equals(other.datetime, datetime)) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                const DeepCollectionEquality()
                    .equals(other.dayOfWeek, dayOfWeek)) &&
            (identical(other.dayOfYear, dayOfYear) ||
                const DeepCollectionEquality()
                    .equals(other.dayOfYear, dayOfYear)) &&
            (identical(other.dst, dst) ||
                const DeepCollectionEquality().equals(other.dst, dst)) &&
            (identical(other.dstFrom, dstFrom) ||
                const DeepCollectionEquality()
                    .equals(other.dstFrom, dstFrom)) &&
            (identical(other.dstOffset, dstOffset) ||
                const DeepCollectionEquality()
                    .equals(other.dstOffset, dstOffset)) &&
            (identical(other.dstUntil, dstUntil) ||
                const DeepCollectionEquality()
                    .equals(other.dstUntil, dstUntil)) &&
            (identical(other.rawOffset, rawOffset) ||
                const DeepCollectionEquality()
                    .equals(other.rawOffset, rawOffset)) &&
            (identical(other.timezone, timezone) ||
                const DeepCollectionEquality()
                    .equals(other.timezone, timezone)) &&
            (identical(other.unixtime, unixtime) ||
                const DeepCollectionEquality()
                    .equals(other.unixtime, unixtime)) &&
            (identical(other.utcDatetime, utcDatetime) ||
                const DeepCollectionEquality()
                    .equals(other.utcDatetime, utcDatetime)) &&
            (identical(other.utcOffset, utcOffset) ||
                const DeepCollectionEquality()
                    .equals(other.utcOffset, utcOffset)) &&
            (identical(other.weekNumber, weekNumber) ||
                const DeepCollectionEquality()
                    .equals(other.weekNumber, weekNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(abbreviation) ^
      const DeepCollectionEquality().hash(clientIp) ^
      const DeepCollectionEquality().hash(datetime) ^
      const DeepCollectionEquality().hash(dayOfWeek) ^
      const DeepCollectionEquality().hash(dayOfYear) ^
      const DeepCollectionEquality().hash(dst) ^
      const DeepCollectionEquality().hash(dstFrom) ^
      const DeepCollectionEquality().hash(dstOffset) ^
      const DeepCollectionEquality().hash(dstUntil) ^
      const DeepCollectionEquality().hash(rawOffset) ^
      const DeepCollectionEquality().hash(timezone) ^
      const DeepCollectionEquality().hash(unixtime) ^
      const DeepCollectionEquality().hash(utcDatetime) ^
      const DeepCollectionEquality().hash(utcOffset) ^
      const DeepCollectionEquality().hash(weekNumber);

  @JsonKey(ignore: true)
  @override
  _$TimeInfoCopyWith<_TimeInfo> get copyWith =>
      __$TimeInfoCopyWithImpl<_TimeInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TimeInfoToJson(this);
  }
}

abstract class _TimeInfo implements TimeInfo {
  const factory _TimeInfo(
      {String abbreviation,
      String clientIp,
      String datetime,
      int dayOfWeek,
      int dayOfYear,
      bool dst,
      String dstFrom,
      int dstOffset,
      String dstUntil,
      int rawOffset,
      String timezone,
      dynamic unixtime,
      dynamic utcDatetime,
      dynamic utcOffset,
      dynamic weekNumber}) = _$_TimeInfo;

  factory _TimeInfo.fromJson(Map<String, dynamic> json) = _$_TimeInfo.fromJson;

  @override
  String get abbreviation => throw _privateConstructorUsedError;
  @override
  String get clientIp => throw _privateConstructorUsedError;
  @override
  String get datetime => throw _privateConstructorUsedError;
  @override
  int get dayOfWeek => throw _privateConstructorUsedError;
  @override
  int get dayOfYear => throw _privateConstructorUsedError;
  @override
  bool get dst => throw _privateConstructorUsedError;
  @override
  String get dstFrom => throw _privateConstructorUsedError;
  @override
  int get dstOffset => throw _privateConstructorUsedError;
  @override
  String get dstUntil => throw _privateConstructorUsedError;
  @override
  int get rawOffset => throw _privateConstructorUsedError;
  @override
  String get timezone => throw _privateConstructorUsedError;
  @override
  dynamic get unixtime => throw _privateConstructorUsedError;
  @override
  dynamic get utcDatetime => throw _privateConstructorUsedError;
  @override
  dynamic get utcOffset => throw _privateConstructorUsedError;
  @override
  dynamic get weekNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TimeInfoCopyWith<_TimeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
