import 'package:flutter/material.dart';
import 'services/notificationservice.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Notification_Service.instance.initialize();
  runApp(MaterialApp(home: MyApp())); // Wrap with MaterialApp
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hides debug banner
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Notification')),
        body: const Center(
          child: Text('Hello, Notifications!'),
        ),
      ),
    );
  }
}
