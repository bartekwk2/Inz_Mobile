import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inzynierka/navigation/routes.dart';
import 'package:inzynierka/screens/home/keys/home_keys.dart';

class HomeCard extends AnimatedWidget {
  final bool onBottom;
  final bool isVideo;
  final void Function() startAnim;

  const HomeCard({
    required this.onBottom,
    required this.isVideo,
    required this.startAnim,
    required Animation animation,
    required  Key key,
  }) : super(listenable: animation, key: key);

  Animation get _homeTransitionAnimation => listenable as Animation;

  @override
  Widget build(BuildContext context) {
    double transitionValue = _homeTransitionAnimation.value;

    return Positioned(
      bottom: onBottom ? transitionValue : 0,
      left: 0,
      right: 0,
      child: Container(
        width: double.infinity,
        height: onBottom ? Get.height / 1.8 : Get.height / 1.95,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black, width: 2.0),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Column(
          children: [
            _buildHeaderWidget(),
            const SizedBox(
              height: 20,
            ),
            isVideo ? _buildVideoDescWidget() : _buildPhotoDescWidget(),
            Expanded(child: SizedBox()),
            _buildButtonWidget(),
            const SizedBox(height: 10),
            _buildRedirectTextWidget(),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildVideoDescWidget() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          Divider(
            height: 3,
            thickness: 1.5,
            color: Colors.grey,
          ),
          _buildInformationRow("Tłumaczenie języka migowego", Icons.swipe),
          _buildInformationRow("Do postaci tekstu", Icons.sort_by_alpha),
          _buildInformationRow("Z kamery telefonu", Icons.videocam),
          _buildInformationRow("W czasie rzeczywistym", Icons.watch_later),
        ],
      ),
    );
  }
  Widget _buildPhotoDescWidget() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          const SizedBox(height: 10,),
          Divider(
            height: 3,
            thickness: 1.5,
            color: Colors.grey,
          ),
          _buildInformationRow("Tłumaczenie języka migowego", Icons.swipe),
          _buildInformationRow("Do postaci tekstu", Icons.sort_by_alpha),
          _buildInformationRow("Z aparatu telefonu", Icons.photo_camera),
          _buildInformationRow("Lub z dysku", Icons.photo_library),
        ],
      ),
    );
  }

  Widget _buildInformationRow(String text, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              children: [
                SizedBox(height: 30, width: 30, child: Icon(icon)),
                SizedBox(width: 10),
                Text(
                  text,
                  style: GoogleFonts.ubuntu(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5
          ),
          Divider(
            height: 3,
            thickness: 1.5,
            color: Colors.grey,
          )
        ],
      ),
    );
  }

  Widget _buildHeaderWidget() {
    return Container(
      key: isVideo ? HomeKeys.firstButtonKey : HomeKeys.secondButtonKey,
      width: 200,
      height: 60,
      decoration: BoxDecoration(
          color: isVideo ? Colors.black : Colors.green,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25))),
      child: Padding(
        padding: const EdgeInsets.only(top: 27),
        child: Text(
          isVideo ? "Video" : "Zdjęcie",
          style: GoogleFonts.ubuntu(color: Colors.white, fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _buildButtonWidget() {
    return GestureDetector(
        onTap: () {
          isVideo
              ? Get.toNamed(RouteConst.classifierRoute)
              : Get.toNamed(RouteConst.photoRoute);
        },
        child: Container(
            width: 230,
            height: 55,
            alignment: FractionalOffset.center,
            child: Text(
              "Zacznij tłumaczenie",
              style: GoogleFonts.ubuntu(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.3,
              ),
            ),
            decoration: BoxDecoration(
              color: !isVideo ? Color(0xff3A7E45) : Color(0xff494949),
              borderRadius: BorderRadius.circular(18.0),
            )));
  }

  Widget _buildRedirectTextWidget() {
    return GestureDetector(
      onTap: () {
        startAnim();
      },
      child: Text(
        isVideo ? "Przejdź do sekcji zdjęcia" : "Przejdź do sekcji video",
        style: GoogleFonts.ubuntu(
          color: Color(0xff207395),
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
