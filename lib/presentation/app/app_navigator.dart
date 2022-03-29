import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mooddiary/domain/app/app_bloc.dart';
import 'package:mooddiary/domain/app/app_state.dart';
import 'package:mooddiary/presentation/app/day_mood_diary_edit.dart';
import 'package:mooddiary/presentation/app/mood_diary_app.dart';

class AppNavigator extends StatelessWidget {
  const AppNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocBuilder<AppBloc, AppState>(
        builder: (context, state) => Navigator(pages: [
          if (state.selectedDiary == null)
            const MaterialPage(child: MoodDiaryApp())
          else
            MaterialPage(child: DayMoodDiary(diary: state.selectedDiary!)),
        ], onPopPage: (route, result) => route.didPop(result)),
      );
}
