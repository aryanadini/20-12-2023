import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Worm extends StatefulWidget {
  const Worm({super.key});

  @override
  State<Worm> createState() => _WormState();
}

class _WormState extends State<Worm> {

  final controller = PageController(viewportFraction: 0.8, keepPage: true);


  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
        6,
            (index) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey.shade300,
          ),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          child: Container(
            height: 280,
            child: Center(
                child: Text(
                  "Page $index",
                  style: TextStyle(color: Colors.indigo),
                )),
          ),
        ));

    return Scaffold(
        body: SafeArea(
        child: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        SizedBox(height: 16),
    SizedBox(
    height: 240,

    child: PageView.builder(

    controller: controller,
    // itemCount: pages.length,
    itemBuilder: (_, index) {
    return pages[index % pages.length];
    },

    ),
    ),
    Padding(
    padding: const EdgeInsets.only(top: 24, bottom: 12),
    child: Text(
    'Jumping Dot',
    style: TextStyle(color: Colors.black54),
    ),
    ),
    SmoothPageIndicator(
    controller: controller,
    count: pages.length,
    effect: const JumpingDotEffect(
    dotHeight: 16,
    dotWidth: 16,
      jumpScale: .7,
      verticalOffset: 15,
    ),
    ),
        ],
        ),
        ),
        ),
    );
  }
}
final colors = const [
  Colors.red,
  Colors.green,
  Colors.greenAccent,
  Colors.amberAccent,
  Colors.blue,
  Colors.amber,
];