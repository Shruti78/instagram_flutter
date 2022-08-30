import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_flutter/responsive/mobile_screen_layout.dart';
import 'package:instagram_flutter/responsive/responsive_layout_screen.dart';
import 'package:instagram_flutter/responsive/web_screen_layout.dart';
import 'package:instagram_flutter/screens/login_screen.dart';
import 'package:instagram_flutter/utils/colors.dart';

import 'screens/signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
      apiKey: "AIzaSyD4MJ5dxk2zshxMacdfUMFG-umLltGN9FM",
      appId: "1:151377429373:web:61648758a51af82ea10214",
      messagingSenderId: "151377429373",
      projectId: "instagram-tut-402b2",
      storageBucket: "instagram-tut-402b2.appspot.com",
    ));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark().copyWith(
        backgroundColor: mobileBackgroundColor,
      ),
      // home: const ResponsiveLayout(
      //   mobilescreenLayout: MobileScreenLayout(),
      //   webscreenLayout: webScreenLayout(),
      // ),

      home: const SignupScreen(),
    );
  }
}
