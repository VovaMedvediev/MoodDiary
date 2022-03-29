import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mooddiary/domain/settings/settings_cubit.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeVerifyPage extends StatelessWidget {
  PinCodeVerifyPage({Key? key}) : super(key: key);
  final TextEditingController tec = TextEditingController();
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(children: [
          PinCodeTextField(
              controller: tec,
              appContext: context,
              length: 4,
              onChanged: (v) {}),
          ElevatedButton(
              onPressed: () {
                String? msg = BlocProvider.of<SettingsCubit>(context)
                    .checkVerify(tec.text);
                if (msg != null) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(msg)));
                }
              },
              child: const Text("Verify"))
        ]),
      );
}
