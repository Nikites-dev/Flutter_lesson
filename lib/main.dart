import 'package:flutter/material.dart';
import 'package:monkey_app/card.dart';
import 'package:monkey_app/home.dart';
import 'auth.dart';

void main() async {
  // DBConnection().connectDB();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyThemeApp());
}

class MyThemeApp extends StatelessWidget {
  const MyThemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      debugShowCheckedModeBanner: false,
      // home: AuthPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthPage(),
        '/home': (context) => const HomePage(),
        '/card': (context) => const CardPage(),
      },
    );
  }
}
