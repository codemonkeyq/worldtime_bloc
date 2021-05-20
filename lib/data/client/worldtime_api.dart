import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:worldtime_bloc/model/time_info.dart';

part 'worldtime_api.g.dart';

@RestApi(baseUrl: 'http://worldtimeapi.org/api')
abstract class WorldTimeApi {
  factory WorldTimeApi(Dio dio, {String baseUrl}) = _WorldTimeApi;

  @GET('/ip')
  Future<TimeInfo> getCurrentTime();

  @GET('/timezone/{timeZone}')
  Future<TimeInfo> getTimezoneTime(@Path() String timeZone);

  @GET('/timezone')
  Future<List<String>> getTimeZones();
}
