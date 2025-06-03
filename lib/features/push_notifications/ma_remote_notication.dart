import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:resident_app/features/push_notifications/ma_local_notification.dart';

class MARemoteNotification {
  static void handleRemoteMessage(RemoteMessage message) {
    if (message.notification == null) return;
    MALocalNotifications.showLocalNotification(
      id: 1,
      title: message.notification?.title,
      body: message.notification?.body,
    );
  }

  static Future<void> firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    await Firebase.initializeApp();
  }
}
