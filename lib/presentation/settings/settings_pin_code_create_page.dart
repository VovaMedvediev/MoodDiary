import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mooddiary/domain/settings/settings_cubit.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeSetPage extends StatefulWidget {
  const PinCodeSetPage({Key? key}) : super(key: key);

  @override
  State<PinCodeSetPage> createState() => _PinCodeSetPageState();
}

class _PinCodeSetPageState extends State<PinCodeSetPage> {
  bool _isValidCode = false;

  late TextEditingController tec1 = TextEditingController(),
      tec2 = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () =>
                  BlocProvider.of<SettingsCubit>(context).torgglePinCode(),
              icon: const Icon(Icons.cancel),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                PinCodeTextField(
                  obscureText: true,
                  appContext: context,
                  length: 4,
                  onCompleted: (v) {},
                  onChanged: (value) => tec2.clear(),
                  keyboardType: TextInputType.number,
                  controller: tec1,
                ),
                PinCodeTextField(
                  obscureText: true,
                  controller: tec2,
                  appContext: context,
                  length: 4,
                  onChanged: (c) {},
                  keyboardType: TextInputType.number,
                  onCompleted: (v) => _isValidCode = v == tec1.text,
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                if (_isValidCode) {
                  BlocProvider.of<SettingsCubit>(context).setPinCode(tec1.text);
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content:
                          Text("New Pin code:" + tec1.value.text.toString())));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Not valid pin code")));
                  tec1.clear();
                  tec2.clear();
                }
              },
              child: const Text("Set"),
            ),
          ],
        ));
  }
}
