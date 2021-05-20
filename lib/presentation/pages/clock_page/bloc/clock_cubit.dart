import 'package:bloc/bloc.dart';
import 'package:worldtime_bloc/model/time_info.dart';

class ClockCubit extends Cubit<List<TimeInfo>> {
  ClockCubit() : super([]);

  Future<void> addTimeInfo(TimeInfo clock) async {
    emit(state..add(clock));
  }

  Future<void> removeTimeInfo(TimeInfo clock) async {
    emit(state..remove(clock));
  }


}
