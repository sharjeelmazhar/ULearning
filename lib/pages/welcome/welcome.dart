import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 34.h),
          width: 375.w,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              PageView(
                children: [
                  _page(
                      index: 1,
                      context: context,
                      imagePath: 'Image 1',
                      buttonText: 'Next',
                      title: 'First See Learning',
                      subTitle:
                          'Forget about a for of paper all knowledge in one learning?'),
                  _page(
                      index: 2,
                      context: context,
                      imagePath: 'Image 2',
                      buttonText: 'Next',
                      title: 'Connect With Everyone',
                      subTitle:
                          'Always keep in touch with your tutors & friends. Let\'s get connected!!!'),
                  _page(
                      index: 3,
                      context: context,
                      imagePath: 'Image 3',
                      buttonText: 'Get Started',
                      title: 'Always Facinated Learning',
                      subTitle:
                          'Anywhere, anytime. The time is at your discretion, so study whenever you want'),
                ],
              ),
              Positioned(
                bottom: 100.h,
                child: DotsIndicator(
                  mainAxisAlignment: MainAxisAlignment.center,
                  dotsCount: 3,
                  // decorator: DotsDecorator(color: Colors.blue),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _page(
      {required int index,
      required BuildContext context,
      required String imagePath,
      required String title,
      required String subTitle,
      required String buttonText}) {
    return Column(
      children: [
        SizedBox(
          height: 345.w,
          width: 345.w,
          child: Text(imagePath),
        ),
        Container(
          child: Text(
            title,
            style: TextStyle(
                color: Colors.black,
                fontSize: 24.sp,
                fontWeight: FontWeight.normal),
          ),
        ),
        Container(
          width: 375.w,
          padding: EdgeInsets.only(left: 30.w, right: 30.w),
          child: Text(
            subTitle,
            style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 14.sp,
                fontWeight: FontWeight.normal),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
              top: 100.h, left: 25.w, right: 25.w, bottom: 25.h),
          width: 325.w,
          height: 50.h,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(
              Radius.circular(15.w),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.normal),
            ),
          ),
        )
      ],
    );
  }
}
