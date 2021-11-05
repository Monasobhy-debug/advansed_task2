import 'dart:async';
import 'package:advanced_task2/widget/reusable_card.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  @override
  _AnimationScreenState createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen>
    with TickerProviderStateMixin {
  int duration = 500;
  late AnimationController controller1;
  late AnimationController controller2;
  late AnimationController controller3;
  late AnimationController controller4;
  late Animation<double> animation1;
  late Animation<double> animation2;
  late Animation<double> animation3;
  late Animation<double> animation4;
  void initState() {
    super.initState();

    controller1 = AnimationController(
        vsync: this, duration: Duration(milliseconds: duration))
      ..forward()
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          Future.delayed(Duration(milliseconds: 500), () {
            controller1.repeat(reverse: true);
          });
        }
      })
      ..addListener(() {
        setState(() {});
      });

    controller2 = AnimationController(
        vsync: this, duration: Duration(milliseconds: duration))
      ..forward()
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          Future.delayed(Duration(milliseconds: 750), () {
            controller2.repeat(reverse: true);
          });
        }
      })
      ..addListener(() {
        setState(() {});
      });

    controller3 = AnimationController(
        vsync: this, duration: Duration(milliseconds: duration))
      ..forward()
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          Future.delayed(Duration(milliseconds: 1250), () {
            controller3.repeat(reverse: true);
          });
        }
      })
      ..addListener(() {
        setState(() {});
      });

    controller4 = AnimationController(
        vsync: this, duration: Duration(milliseconds: duration))
      ..forward()
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          Future.delayed(Duration(milliseconds: 1000), () {
            controller4.repeat(reverse: true);
          });
        }
      })
      ..addListener(() {
        setState(() {});
      });

    animation1 = Tween(
      begin: 1.0,
      end: 1.5,
    ).animate(CurvedAnimation(
      parent: controller1,
      curve: Curves.easeOutQuad,
    ));
    // ..addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     controller1.reverse();
    //   } else if (status == AnimationStatus.dismissed) {
    //     controller1.forward();
    //   }
    // });

    animation2 = Tween(
      begin: 1.0,
      end: 1.5,
    ).animate(CurvedAnimation(parent: controller2, curve: Curves.easeOutQuad));
    // ..addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     controller2.reverse();
    //   } else if (status == AnimationStatus.dismissed) {
    //     controller2.forward();
    //   }
    // });

    animation3 = Tween(
      begin: 1.0,
      end: 1.5,
    ).animate(CurvedAnimation(parent: controller3, curve: Curves.easeOutQuad));
    // ..addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     controller3.reverse();
    //   } else if (status == AnimationStatus.dismissed) {
    //     controller3.forward();
    //   }
    // });

    animation4 = Tween(
      begin: 1.0,
      end: 1.5,
    ).animate(CurvedAnimation(parent: controller4, curve: Curves.easeOutQuad))
        // ..addStatusListener((status) {
        //   if (status == AnimationStatus.completed) {
        //     controller4.reverse();
        //   } else if (status == AnimationStatus.dismissed) {
        //     controller4.forward();
        //   }
        // })
        ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ReusableCard(
                    animation: animation1,
                    alignment: Alignment.bottomRight,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  ReusableCard(
                    animation: animation2,
                    alignment: Alignment.bottomLeft,
                    color: Colors.grey,
                  ),
                  // )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ReusableCard(
                    animation: animation3,
                    alignment: Alignment.centerRight,
                    color: Colors.deepPurple,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  ReusableCard(
                    animation: animation4,
                    alignment: Alignment.centerLeft,
                    color: Colors.teal,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
