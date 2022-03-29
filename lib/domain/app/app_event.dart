import 'package:mooddiary/domain/app/diary.dart';

abstract class AppEvent {}

class OpenDayAppEvent extends AppEvent {
  Diary diary;
  OpenDayAppEvent({
    required this.diary,
  });
}

class CloseDayEditor extends AppEvent {}
