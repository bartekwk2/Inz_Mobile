import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _homeTransitionAnimation;
  Animation<bool>? _homeTransitionAnimationBool;
  bool forwardFirstAnim = true;
  bool animReturn = false;
  double endTransitionValue = Get.height / 2 + 150;

  ValueKey videoKey = ValueKey("video");
  ValueKey photoKey = ValueKey("photo");

  @override
  void initState() {
    _controller = AnimationController(duration: Duration(milliseconds: 1000), vsync: this)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          forwardFirstAnim = false;
        } else if (status == AnimationStatus.dismissed) {
          forwardFirstAnim = true;
        }
      });

    _homeTransitionAnimation = TweenSequence([
      TweenSequenceItem<double>(tween: Tween(begin: 0.0, end: endTransitionValue), weight: 50),
      TweenSequenceItem<double>(tween: Tween(begin: endTransitionValue, end: 0.0), weight: 50),
    ]).animate(CurvedAnimation(parent: _controller!, curve: Curves.easeInOut));

    _homeTransitionAnimationBool = Tween<bool>(begin: false, end: true)
        .animate(CurvedAnimation(parent: _controller!, curve: Interval(0.40, 0.40, curve: Curves.easeInOut)))
      ..addListener(() {
        animReturn = _homeTransitionAnimationBool!.value;
      });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: AnimatedBuilder(
          animation: _controller!,
          builder: (context, child) {
            return Stack(
              children: [
                Container(),
                Container(
                    height: Get.height / 2 + 2,
                    width: double.infinity,
                    child: Image.asset(
                      !animReturn ? "assets/images/main.jpg" : "assets/images/main2.jpg",
                      fit: BoxFit.fill,
                    )),
                Positioned(
                    top: 80,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            "Tłumacz migowy",
                            style: GoogleFonts.ubuntu(fontSize: 30),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            !animReturn ? "Translacja z video" : "Translacja ze zdjęcia",
                            style: GoogleFonts.ubuntu(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    )),
                ...makeStackCards(animReturn),
              ],
            );
          },
        ),
      ),
    );
  }

  List<Widget> makeStackCards(bool animReturn) {
    List<Widget> cards = [];
    if (animReturn) {
      cards.add(HomeCard(
        animation: _homeTransitionAnimation!,
        isVideo: true,
        startAnim: manageAnimations,
        key: videoKey,
        onBottom: false,
      ));
      cards.add(HomeCard(
        animation: _homeTransitionAnimation!,
        key: photoKey,
        startAnim: manageAnimations,
        isVideo: false,
        onBottom: true,
      ));
    } else {
      cards.add(HomeCard(
        animation: _homeTransitionAnimation!,
        key: photoKey,
        startAnim: manageAnimations,
        isVideo: false,
        onBottom: true,
      ));
      cards.add(HomeCard(
        animation: _homeTransitionAnimation!,
        isVideo: true,
        startAnim: manageAnimations,
        key: videoKey,
        onBottom: false,
      ));
    }
    return cards;
  }

  void manageAnimations() {
    if (forwardFirstAnim) {
      _controller!.forward();
    } else {
      _controller!.reverse();
    }
  }
}
