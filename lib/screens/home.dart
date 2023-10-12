import 'package:flutter/material.dart';
import 'package:misstea/app.dart';

// extensions
import 'package:misstea/extensions/snackbar.dart';
// utilities
import 'package:misstea/utilities/atNow.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("ホーム")), body: Container());
  }
}
