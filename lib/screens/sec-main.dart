import 'package:chainlock/screens/sec2.dart';
import 'package:chainlock/screens/sec3.dart';
import 'package:chainlock/screens/sec4.dart';
import 'package:chainlock/screens/sec5.dart';
import 'package:chainlock/screens/sec6.dart';
import 'package:chainlock/screens/sec7.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:im_stepper/stepper.dart';

import 'sec1.dart';

class SecMain extends StatefulWidget {
  final String address;
  final String cardNo;
  final String crypto;
  final String clcHash;

  const SecMain({Key key, this.address, this.cardNo, this.crypto, this.clcHash}) : super(key: key);
  @override
  _SecMainState createState() => _SecMainState();
}

class _SecMainState extends State<SecMain> {
  PageController _controller = PageController();
  int currentPage = 0;
  Map cardDetails = {};

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cardDetails['address'] = widget.address;
    cardDetails['crypto'] = widget.crypto;
    cardDetails['cardNo'] = widget.cardNo;
    cardDetails['clcHash'] = widget.clcHash;
    _controller.addListener(() {
      if (mounted) {
        setState(() {
          currentPage = _controller.page.toInt();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Check a card"),
      ),
      body: Padding(
        padding: EdgeInsets.all(ScreenUtil().setWidth(15)),
        child: Column(
          children: [
            IconStepper(
              activeStep: currentPage,
              enableStepTapping: false,
              icons: [
                Icon(
                  currentPage <= 0 ? Icons.album_outlined : Icons.check,
                  color: currentPage == 0 ? Colors.white : Colors.black,
                ),
                Icon(
                  currentPage <= 1 ? Icons.album_outlined : Icons.check,
                  color: currentPage == 1 ? Colors.white : Colors.black,
                ),
                Icon(
                  currentPage <= 2 ? Icons.album_outlined : Icons.check,
                  color: currentPage == 2 ? Colors.white : Colors.black,
                ),
                Icon(
                  currentPage <= 3 ? Icons.album_outlined : Icons.check,
                  color: currentPage == 3 ? Colors.white : Colors.black,
                ),
                Icon(
                  currentPage <= 4 ? Icons.album_outlined : Icons.check,
                  color: currentPage == 4 ? Colors.white : Colors.black,
                ),
                Icon(
                  currentPage <= 5 ? Icons.album_outlined : Icons.check,
                  color: currentPage == 5 ? Colors.white : Colors.black,
                ),
                Icon(
                  currentPage <= 6 ? Icons.album_outlined : Icons.check,
                  color: currentPage == 6 ? Colors.white : Colors.black,
                ),
              ],
              enableNextPreviousButtons: false,
              stepRadius: 15,
              stepReachedAnimationEffect: Curves.easeInOut,
              activeStepBorderPadding: 3,
              lineColor: Theme.of(context).primaryColor,
              activeStepBorderWidth: 1.5,
              activeStepBorderColor: Theme.of(context).primaryColor,
              activeStepColor: Theme.of(context).primaryColor,
              lineLength: 25,
              stepReachedAnimationDuration: Duration(milliseconds: 500),
            ),
            Expanded(
              child: PageView(
                controller: _controller,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Sec1(
                    controller: _controller,
                  ),
                  Sec2(
                    controller: _controller,
                    address: widget.address,
                  ),
                  Sec3(
                    controller: _controller,
                    cardNo: widget.cardNo,
                  ),
                  Sec4(
                    controller: _controller,
                  ),
                  Sec5(
                    controller: _controller,
                  ),
                  Sec6(
                    controller: _controller,
                  ),
                  Sec7(cardDetails: cardDetails,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
