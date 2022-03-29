import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mooddiary/domain/app/app_event.dart';
import 'package:mooddiary/domain/app/app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> with HydratedMixin {
  AppBloc() : super(const AppState()) {
    on<OpenDayAppEvent>((event, emit) {
      emit(state.copyWith(selectedDiary: event.diary));
    });
    on<CloseDayEditor>(
      (event, emit) {
        emit(state.copyWith(selectedDiary: null));
      },
    );
  }

  @override
  AppState? fromJson(Map<String, dynamic> json) => AppState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(AppState state) => state.toJson();
}
