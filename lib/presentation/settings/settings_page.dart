import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mooddiary/domain/settings/settings_cubit.dart';
import 'package:mooddiary/domain/settings/settings_state.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
            onPressed: () =>
                BlocProvider.of<SettingsCubit>(context).showSettingsTorggle(),
            icon: const Icon(Icons.close))
      ]),
      body: Column(children: [
        BlocBuilder<SettingsCubit, SettingsState>(builder: (context, state) {
          return Row(
            children: [
              Expanded(
                child: SwitchListTile(
                    title: const Text("Pin code"),
                    value: BlocProvider.of<SettingsCubit>(context)
                        .state
                        .isPinCodeEnable,
                    onChanged: (v) {
                      BlocProvider.of<SettingsCubit>(context).torgglePinCode();
                    }),
              ),
            ],
          );
        }),
      ]),
    );
  }
}
