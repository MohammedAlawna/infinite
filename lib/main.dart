import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:infinite/responsive/mobile_screen_layout.dart';
import 'package:infinite/responsive/responsive_layout_screen.dart';
import 'package:infinite/responsive/web_screen_layout.dart';
import 'package:infinite/screens/login_screen.dart';
import 'package:infinite/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb) {
await Firebase.initializeApp(
  options: const FirebaseOptions(
    apiKey: "AIzaSyCXoItONnadh5dQGOuVCLk1hPIc0lXFwKY",
   appId: "1:836310769366:web:c3c660088779871454b377",
    messagingSenderId: "836310769366"
   , projectId: "infinite-7e617",
   storageBucket: "infinite-7e617.appspot.com"
   )
);
  }
  else {
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
      title: 'Infinite',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      // home: const ResponsiveLayout(
      //   mobileScreenLayout: MobileScreenLayout(),
      //   webScreenLayout: WebScreenLayout(),
      // ),
      home: LoginScreen(),
    );
  }
}
