import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'notification_form.dart';
import 'notification_service.dart';
import 'theme.dart';

void main() {
  final notification = NotificationService();
  notification.initialize();
  runApp(Provider<NotificationService>.value(
    value: notification,
    child: const MyApp(),
  ));
}
const title = 'Local Notifications Demo';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  @override
  void initState(){
    super.initState();
    context.read<NotificationService>();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: MyApp.navigatorKey,
      title: title,
      color: brandColor,
      theme: theme,
      darkTheme: darkTheme,
      home: Scaffold(
        appBar: AppBar(title: Text(title), centerTitle: true),
        body: const NotificationForm(),
      ),
    );
  }
}









