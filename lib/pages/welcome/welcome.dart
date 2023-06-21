import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/values/colors.dart';
import 'bloc/welcome_blocs.dart';
import 'bloc/welcome_events.dart';
import 'bloc/welcome_states.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<WelcomeBloc, WelcomeState>(
      builder: (context, state) {
        return Container(
          color: AppColors.primaryBackground,
          width: 375.w,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              PageView(
                controller: pageController,
                onPageChanged: (index) {
                  state.page = index;
                  BlocProvider.of<WelcomeBloc>(context).add(WelcomeEvent());
                },
                children: [
                  _page(
                    1,
                    context,
                    "Next",
                    "Meditasi",
                    "Panduan meditasi akan membantu kamu menenangkan pikiran, meningkatkan konsentrasi, dan mengatasi masalah kesehatan mental",
                    "assets/icons/splashone.png",
                  ),
                  _page(
                    2,
                    context,
                    "Next",
                    "Pencatatan Mood",
                    "Dengan mencatat perasaan secara rutin, Anda akan dapat mengenali pola dan faktor yang mempengaruhi perubahan suasana hati Anda.",
                    "assets/icons/splashtwo.png",
                  ),
                  _page(
                    3,
                    context,
                    "Get Started",
                    "Konseling",
                    "Jangan ragu untuk mencari bantuan profesional dan mendapatkan dukungan yang Anda butuhkan. Kami siap membantu Anda.",
                    "assets/icons/splashthree.png",
                  ),
                ],
              ),
              Positioned(
                  bottom: 100.h,
                  child: DotsIndicator(
                    position: state.page.toDouble(),
                    dotsCount: 3,
                    mainAxisAlignment: MainAxisAlignment.center,
                    decorator: DotsDecorator(
                        color: AppColors.primaryThirdElementText,
                        activeColor: Color(0xff90A17D),
                        size: const Size.square(8.0),
                        activeSize: const Size(18.0, 8.0),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  )),
            ],
          ),
        );
      },
    ));
  }

  Widget _page(int index, BuildContext context, String buttonName, String title,
      String subTitle, String imagePath) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 80.h, bottom: 20.h),
          width: 300.w,
          height: 300.w,
          // color: Colors.red,
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 20.h),
          child: Text(title,
              style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.normal)),
        ),
        Container(
          width: 375.w,
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 10.h),
          child: Center(
            child: Text(subTitle,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: AppColors.primarySecondaryElementText,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.normal)),
          ),
        ),
        GestureDetector(
          onTap: () {
            if (index < 3) {
              //animation
              pageController.animateToPage(index,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut);
            }
            // else {
            //   // Navigator.of(context)
            //   //     .push(MaterialPageRoute(builder: (context) => MyHomePage()));
            //   Global.storageService
            //       .setBool(AppConstants.STORAGE_DEVICE_OPEN_FIRST_TIME, true);
            //   print(
            //       "The value is ${Global.storageService.getDeviceFirstOpen()}");
            //   Navigator.of(context)
            //       .pushNamedAndRemoveUntil("/sign_in", (route) => false);
            // }
          },
          child: Container(
            margin: EdgeInsets.only(top: 100.h, left: 25.w, right: 25.w),
            width: 325.w,
            height: 50.h,
            decoration: BoxDecoration(
                color: AppColors.mainButtonPrimary,
                borderRadius: BorderRadius.circular(15.w),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(0, 5),
                  )
                ]),
            child: Center(
              child: Text(buttonName,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal)),
            ),
          ),
        ),
      ],
    );
  }
}
