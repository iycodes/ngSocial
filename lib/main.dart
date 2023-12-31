import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:minimalsocialapp/firebase_options.dart';
import 'auth/auth.dart';
import 'auth/login_or_register.dart';
import 'pages/home_page.dart';
import 'pages/profile_page.dart';
import 'pages/user_page.dart';
import 'theme/dark_mode.dart';
import 'theme/light_mode.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthPage(),
      theme: lightMode,
      darkTheme: darkMode,
      routes: {
        '/login_register_page': (context) => const LoginOrRegister(),
        '/home_page': (context) => const HomePage(),
        '/profile_page': (context) => const ProfilePage(),
        '/user_page': (context) => const UserPage(),
      },
    );
  }
}

final firebaseOptions = FirebaseOptions(
    apiKey: dotenv.env["apiKey"]!,
    appId: dotenv.env["appId"]!,
    messagingSenderId: dotenv.env["messagingSenderId"]!,
    projectId: "iysocial");
