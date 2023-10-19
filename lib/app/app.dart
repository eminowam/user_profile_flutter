import 'package:flutter/material.dart';
import 'package:tamyr_profile/screen/profile/user_profile.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light, fontFamily: "Mons"),
      home: UserProfile(),
    );
  }
}
