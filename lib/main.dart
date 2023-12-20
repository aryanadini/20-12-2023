import 'package:flutter/material.dart';

import 'MyWormEffect.dart';
import 'Mypermissionhandler.dart';
import 'mypageview.dart';
import 'mysmothin.dart';
import 'myurllaucher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
home:Worm(),

    );


  }
}
