import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Permi extends StatefulWidget {
  const Permi({super.key});

  @override
  State<Permi> createState() => _PermiState();
}

class _PermiState extends State<Permi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("url launcher"),
      ),

      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () async {
              const url = 'https://en.wikipedia.org/wiki/Kerala';

              if (await canLaunch(url)) {
                await launch(url, forceWebView: true, enableJavaScript: true);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: Center(
              child: Text(
                "Want Read Article Tap Here",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.w400),

              ),
            ),
          ),
        ],
      ),
    );
  }
}
