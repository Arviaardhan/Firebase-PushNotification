import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});
  static const route = '/notification-page';

  @override
  Widget build(BuildContext context) {

    final message = ModalRoute.of(context)!.settings.arguments as RemoteMessage;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Title : ${message.notification!.title}',
            ),
            Text(
              'Body : ${message.notification!.body}',
            ),
            Text(
              'Payload : ${message.data}',
            ),
          ],
        ),
      ),
    );
  }
}