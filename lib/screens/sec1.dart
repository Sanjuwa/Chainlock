import 'package:chainlock/screens/sec2.dart';
import 'package:chainlock/widgets/custom-text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:im_stepper/stepper.dart';

class Sec1 extends StatelessWidget {
  final PageController controller;

  const Sec1({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(ScreenUtil().setWidth(10)),
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: ScreenUtil().setWidth(45),
                ),
                child: CustomText(
                  text: "Security Features check",
                  isBold: true,
                  size: ScreenUtil().setSp(35),
                ),
              ),
            ),
            CustomText(
              text:
                  "The Cryptographic examination has been completed. The app now walks you through the check of the physical security features.",
              color: Color(0xff697378),
              size: ScreenUtil().setSp(25),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(100),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffbdbdbd),
                  padding: EdgeInsets.symmetric(
                    vertical: ScreenUtil().setHeight(20),
                    horizontal: ScreenUtil().setHeight(250),
                  ),
                  elevation: 5,
                  textStyle: TextStyle(
                    fontSize: ScreenUtil().setSp(40),
                  ),
                ),
                child: CustomText(
                  text: "OK",
                  size: ScreenUtil().setSp(30),
                ),
                onPressed: () {
                  controller.animateToPage(1,
                      curve: Curves.ease,
                      duration: Duration(milliseconds: 200));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
