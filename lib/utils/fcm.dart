
import 'dart:developer';
import 'dart:io';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

class NotificationService {
  static initializeNotification() async {
    await AwesomeNotifications().initialize(
      // set the icon to null if you want to use the default app icon
        null,
        [
          NotificationChannel(
              channelGroupKey: 'scheduled_channel',
              channelKey: 'scheduled_channel',
              channelName: 'Scheduled Notifications',
              channelDescription: 'Scheduled notifications channel',
              playSound: true,
              soundSource: 'resource://raw/alarm',
              defaultColor: Color(0xFF9D50DD),
              importance: NotificationImportance.High,
              enableVibration: true,
              enableLights: true,
              ledColor: Colors.white)
        ],
        // Channel groups are only visual and are not required
        // channelGroups: [
        //   NotificationChannelGroup(
        //       channelGroupkey: 'scheduled_channel',
        //       channelGroupName: 'Scheduled Notifications')
        // ],
        debug: false);
    AwesomeNotifications().requestPermissionToSendNotifications();
  }

  @pragma('vm:entry-point')
  static Future showScheduledNotificatoin(
      {required int id,
        String? title,
        String? body,
        String? payload,
        required DateTime scheduleTime}) async {
    // String localTimeZone =
    //     await AwesomeNotifications().getLocalTimeZoneIdentifier();
    // // String utcTimeZone = await AwesomeNotifications().getLocalTimeZoneIdentifier();
    // final NotificationCalendar calendar = NotificationCalendar(
    //     minute: scheduleTime.minute,
    //     second: scheduleTime.second,
    //     hour: scheduleTime.hour,
    //     // interval: 86400,
    //     timeZone: localTimeZone,
    //     repeats: true,
    //     allowWhileIdle: true,
    //     preciseAlarm: true);
    // final NotificationContent content = NotificationContent(
    //   id: id,
    //   channelKey: 'scheduled_channel',
    //   title: title,
    //   body: body,
    //   payload: {'id': id.toString()},
    //   category: NotificationCategory.Alarm,
    //   wakeUpScreen: true,
    //   fullScreenIntent: true,
    //   displayOnBackground: true,
    //   displayOnForeground: true,
    //   criticalAlert: true,
    //   autoDismissible: false,
    //   customSound: 'resource://raw/azan',

    //   // notificationLayout: NotificationLayout.BigPicture
    //   // actionType: ActionType.DisabledAction
    // );
    // log("content===> ${content.toMap().toString()}");
    // log("calendar===> ${calendar.toMap().toString()}");

    final t = await AwesomeNotifications().createNotification(
        content: NotificationContent(
          id: id,
          channelKey: 'scheduled_channel',
          title: title,
          body: body,
          payload: {'id': id.toString()},
          category: NotificationCategory.Alarm,
          wakeUpScreen: true,
          fullScreenIntent: true,
          displayOnBackground: true,
          displayOnForeground: true,
          criticalAlert: true,
          autoDismissible: true,
          customSound: 'resource://raw/alarm',
          // notificationLayout: NotificationLayout.
          // actionType: ActionType.Default,
        ),
        schedule: NotificationCalendar(
            minute: scheduleTime.minute,
            second: scheduleTime.second,
            hour: scheduleTime.hour,
            // interval: 86400,
            // timeZone: localTimeZone,
            repeats: true,
            allowWhileIdle: true,
            preciseAlarm: true) /*   ..delayTolerance = 86400000 */,
        //  NotificationSchedule(interval: 86400,
        //   timeZone: localTimeZone,
        //   repeats: true,
        //   allowWhileIdle: true,
        //   preciseAlarm:true),
        actionButtons: [
          NotificationActionButton(
              key: "cancel",
              label: "Close",
              color:Color(0xFFF687B3),
              actionType: ActionType.DisabledAction
          )
        ]);
    log("ttttt====> ${t.toString()}");
  }

  @pragma('vm:entry-point')
  static cancelNotification(id) async {
    if (Platform.isAndroid) await AwesomeNotifications().cancelSchedule(id);
    await AwesomeNotifications().cancel(id);
  }
/* static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();
    static    notificationDetails() {
    return const NotificationDetails(
      android: AndroidNotificationDetails(
        "channelId",
        "prayers",
        playSound: true,
          sound: RawResourceAndroidNotificationSound('azan'),
    importance: Importance.max,
    priority: Priority.high,enableLights: true,
        fullScreenIntent:true
      ),
  iOS:    DarwinNotificationDetails(
          presentSound:true,
          presentBadge: false,
          // sound:

        )
    );
  }
  @pragma('vm:entry-point')

static  Future<void> initUniLinks() async {
      const    AndroidNotificationChannel channel = AndroidNotificationChannel(
        'high_importance_channel', // id
        'High Importance Notifications', // title
        description:
            'This channel is used for important notifications.', // description
        importance: Importance.max,
      );

flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<
    AndroidFlutterLocalNotificationsPlugin>()?.requestPermission();
      await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
     await flutterLocalNotificationsPlugin
    .resolvePlatformSpecificImplementation<
        IOSFlutterLocalNotificationsPlugin>()
    ?.requestPermissions(
    alert: true,
    badge: false,
    sound: true,
    );
    // initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
const AndroidInitializationSettings initializationSettingsAndroid =
    AndroidInitializationSettings('@mipmap/ic_launcher');
final DarwinInitializationSettings initializationSettingsDarwin =
    DarwinInitializationSettings(
        onDidReceiveLocalNotification: onDidReceiveLocalNotification);

final InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
    iOS: initializationSettingsDarwin,
);
flutterLocalNotificationsPlugin.initialize(initializationSettings,
    onDidReceiveNotificationResponse: (NotificationResponse notificationResponse) async {
      final String? payload = notificationResponse.payload;
    if (notificationResponse.payload != null) {
      debugPrint('notification payload: $payload');
    }
    },
    onDidReceiveBackgroundNotificationResponse: notificationTapBackground,
);





//     await flutterLocalNotificationsPlugin.initialize(
//     initializationSettings,
//     onDidReceiveNotificationResponse: (NotificationResponse notificationResponse) async {
//         // ...
//     },
//     onDidReceiveBackgroundNotificationResponse: notificationTapBackground,
// );

  }
@pragma('vm:entry-point')

static cancelNotification(id)async{
  await flutterLocalNotificationsPlugin.cancel(id);
}
@pragma('vm:entry-point')

 static Future showScheduledNotificatoin(
      {int id = 0,
      String? title,
      String? body,
      String? payload,
      required DateTime scheduleTime}) async {

const AndroidNotificationDetails androidNotificationDetails =
    AndroidNotificationDetails(
        'repeating channel id', 'repeating channel name',
        channelDescription: 'repeating description',
        playSound: true,
          sound: RawResourceAndroidNotificationSound('azan'),
    importance: Importance.max,
    priority: Priority.high,enableLights: true,
        fullScreenIntent:true);
        ///
     const   DarwinNotificationDetails iosNotificationDetails = DarwinNotificationDetails(
          presentSound:true,
          presentBadge: false,
          // sound:

        );
// const NotificationDetails notificationDetails =
//     NotificationDetails(android: androidNotificationDetails,iOS: iosNotificationDetails);
// await flutterLocalNotificationsPlugin.periodicallyShow(0, 'repeating title',
//     'repeating body', RepeatInterval.daily, notificationDetails,
//     androidAllowWhileIdle: true);

        ////////////////////////////////////////////;
        log(tz.TZDateTime.from(scheduleTime, tz.local).toString());
    return flutterLocalNotificationsPlugin.zonedSchedule(id, title, body,
        tz.TZDateTime.from(scheduleTime.add(Duration(hours: 10)), tz.local),
         await notificationDetails(),
        androidAllowWhileIdle: true,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime);
  }
@pragma('vm:entry-point')
static void notificationTapBackground(NotificationResponse notificationResponse) {
  // handle action
}

static  void onDidReceiveLocalNotification(
    int id, String? title, String? body, String? payload) async {
  // display a dialog with the notification details, tap ok to go to another page
  showDialog(
    context: Utils.navigatorKey().currentContext!,
    builder: (BuildContext context) => CupertinoAlertDialog(
      title: Text(title??""),
      content: Text(body??''),
      actions: [
        CupertinoDialogAction(
          isDefaultAction: true,
          child: Text('Ok'),
          onPressed: () async {
            // Navigator.of(context, rootNavigator: true).pop();
            // await Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => SecondScreen(payload),
            //   ),
            // );
          },
        )
      ],
    ),
  );
}
 */
}
