import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class Mysmooth extends StatefulWidget {
  const Mysmooth({super.key});

  @override
  State<Mysmooth> createState() => _MysmoothState();
}

class _MysmoothState extends State<Mysmooth> {
  
  var controller;

  @override
  void initState() {
    controller=new PageController(
      viewportFraction:0.8,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          title: new Text('SPI Worm')
      ),
      body:


      Container(
          width:double.infinity,
          height:400,


          child:
          Column(
            children: <Widget>[
              SizedBox(
                height:300,
                // pageview
                child:PageView(
                  controller:controller,
                  children: <Widget>[
                    SizedBox(
                      width:double.infinity,
                      height:300,
                      child:
                      Card(
                        color:Colors.yellow,
                        child:
                        Center(
                          child:
                          Text('Simple Text,Keep Swiping'),
                        ),
                      ),
                    ),

                    SizedBox(
                      width:double.infinity,
                      height:300,
                      child:
                      Card(
                        color:Colors.greenAccent,
                        child:
                        Center(
                          child:
                          Icon(Icons.favorite),
                        ),
                      ),
                    ),

                    SizedBox(
                      width:double.infinity,
                      height:300,
                      child:
                      Card(
                        color:Colors.deepOrangeAccent,
                        child:
                        Center(
                            child:
                            Column(
                              mainAxisAlignment:MainAxisAlignment.center,
                              crossAxisAlignment:CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/FORT_KOCHI_BEACH_SUNSET%2CKERALA_-_panoramio_%282%29.jpg/198px-FORT_KOCHI_BEACH_SUNSET%2CKERALA_-_panoramio_%282%29.jpg"),
                                Text("Dart Logo!")
                              ],
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
      ),





    );
  }
}
