import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mooddiary/domain/settings/settings_cubit.dart';
import 'package:mooddiary/domain/settings/settings_state.dart';
import 'package:mooddiary/presentation/app/app_navigator.dart';
import 'package:mooddiary/presentation/settings/settings_page.dart';
import 'package:mooddiary/presentation/settings/settings_pin_code_create_page.dart';
import 'package:mooddiary/presentation/settings/settings_pin_code_verify_page.dart';

class SettingNavigator extends StatelessWidget {
  const SettingNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, state) {
          return Navigator(
            pages: [
              if (state.verifyAccess())
                const MaterialPage(child: AppNavigator())
              else
                MaterialPage(child: PinCodeVerifyPage()),
              if (state.showSettings) const MaterialPage(child: SettingsPage()),
              if (state.isPinCodeEnable && state.pinCode == null)
                const MaterialPage(child: PinCodeSetPage())
            ],
            onPopPage: (route, result) => route.didPop(result),
          );
        },
      );
}
