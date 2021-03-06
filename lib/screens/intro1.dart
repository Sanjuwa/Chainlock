import 'package:chainlock/widgets/custom-text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Intro1 extends StatelessWidget {
  final PageController controller;
  const Intro1({Key key, @required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/newintro1.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Color(0xffeb690b),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: double.infinity,
                  ),
                  Padding(
                    padding: EdgeInsets.all(ScreenUtil().setHeight(25)),
                    child: CustomText(
                      color: Colors.white,
                      text:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
                      size: ScreenUtil().setSp(30),
                      ls: 1.3,
                      align: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: ScreenUtil().setHeight(50),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).accentColor,
                        padding: EdgeInsets.symmetric(
                          vertical: ScreenUtil().setHeight(20),
                          horizontal: ScreenUtil().setHeight(250),
                        ),
                        elevation: 5,
                        textStyle: TextStyle(
                          fontSize: ScreenUtil().setSp(40),
                        ),
                      ),
                      onPressed: () {
                        controller.animateToPage(1,
                            duration: Duration(milliseconds: 400),
                            curve: Curves.easeIn);
                      },
                      child: Text("Next"),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
