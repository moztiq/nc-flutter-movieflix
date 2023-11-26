import 'package:flutter/material.dart';
import 'package:nc_flutter_movieflix/screens/home_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
