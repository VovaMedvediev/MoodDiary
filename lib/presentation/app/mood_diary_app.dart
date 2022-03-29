import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mooddiary/domain/app/app_bloc.dart';
import 'package:mooddiary/domain/app/app_event.dart';
import 'package:mooddiary/domain/app/diary.dart';
import 'package:mooddiary/domain/settings/settings_cubit.dart';

class MoodDiaryApp extends StatelessWidget {
  const MoodDiaryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () => BlocProvider.of<SettingsCubit>(context)
                    .showSettingsTorggle(),
                icon: const Icon(Icons.settings))
          ],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(DateTime.now().year.toString()),
              const Text("/"),
              Text(DateTime.now().month.toString()),
            ],
          )),
      body: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 5,
                children: _getDays(context),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _getDays(BuildContext context) {
    int days = DateTime(DateTime.now().year, DateTime.now().month + 1, 1)
        .difference(DateTime(DateTime.now().year, DateTime.now().month, 1))
        .inDays;
    List<Widget> w = [];
    for (var i = 1; i <= days; i++) {
      w.add(InkWell(
        onTap: () {
          BlocProvider.of<AppBloc>(context)
              .add(OpenDayAppEvent(diary: Diary(dateTime: DateTime.now())));
        },
        child: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: Colors.amber,
            border: Border.all(width: 1),
          ),
          child: Center(
            child: Text(i.toString()),
          ),
        ),
      ));
    }
    return w;
  }
}
