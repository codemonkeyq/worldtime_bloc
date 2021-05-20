import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:worldtime_bloc/data/client/worldtime_api.dart';

class TimezonesCubit extends Cubit<List<String>> {
  TimezonesCubit(this._dio) : super([]) {
    _init();
  }

  Dio _dio;

  _init() async {
    emit(await WorldTimeApi(_dio).getTimeZones());
  }
}
