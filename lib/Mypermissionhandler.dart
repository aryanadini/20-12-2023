

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class Myhandler extends StatefulWidget {
  const Myhandler({super.key});

  @override
  State<Myhandler> createState() => _MyhandlerState();
}

class _MyhandlerState extends State<Myhandler> {
  Future<void> requestPermission() async {
    final permission = Permission.location;

    if (await permission.isDenied) {
      await permission.request();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(onPressed: (){

      }, child: Text("permission")),
    );
  }
}
