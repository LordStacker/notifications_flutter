import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen(this.receivedAction, {super.key});

  final ReceivedAction receivedAction;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Received notification")),
      body: Column(
        children: [
          const Text("Received action:"),
          Text(receivedAction.toMap().toString()),
        ],
      ),
    );
  }
}