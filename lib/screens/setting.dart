import 'package:misstea/app.dart';
import 'package:flutter/material.dart';

// extensions
import 'package:misstea/extensions/color_schemes.g.dart';
import 'package:misstea/extensions/snackbar.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => new _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("設定")), body: Container());
  }
}
