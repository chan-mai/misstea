import 'package:misstea/app.dart';
import 'package:flutter/material.dart';

// utilities
import 'package:misstea/utilities/atNow.dart';
import 'package:flutter/services.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => new _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  // init
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("通知"),
          actions: [],
        ),
        body: Container());
  }
}
