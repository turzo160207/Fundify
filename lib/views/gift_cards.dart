import 'package:flutter/material.dart';
import 'package:appstick/styles/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GiftCardsPage extends StatelessWidget {
  final VoidCallback onBackTap;

  const GiftCardsPage({Key? key, required this.onBackTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Center(
          child: Text(
            "Gift Cards",
            style: TextStyle(
              color: AppColors.font,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        leading: GestureDetector(
          onTap: onBackTap,
          child: Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: Image.asset(
              'assets/images/back.png',
              width: 20.w,
              height: 20.h,
              color: AppColors.font,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                "₣200 gift card to popular retailers.",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: AppColors.font,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: AppColors.textfield,
                borderRadius: BorderRadius.circular(10.r),
              ),
              height: 60.h,
              width: 328.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 8.w),
                  Text(
                    "₣200",
                    style: TextStyle(
                      color: AppColors.font,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Xbox",
                    style: TextStyle(
                      color: AppColors.font,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 1),
                  Image.asset('assets/images/back.png', width: 30, height: 30),
                ],
              ),
            ),
            SizedBox(height: 20),
            TextField(
              style: TextStyle(fontSize: 16.sp, color: AppColors.font, fontWeight: FontWeight.normal),
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.textfield,
                contentPadding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 17.w),
                hintText: "Email Address",
                hintStyle: TextStyle(color: AppColors.font.withOpacity(0.6)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(color: Colors.transparent, width: 0)
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(color: Colors.transparent, width: 0)
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Gift card will be sent to the email provided as well as a receipt.",
              style: TextStyle(
                color: AppColors.font,
                fontSize: 12.sp,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 360.h),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: FractionallySizedBox(
                  child: SizedBox(
                    width: 328.w,
                    height: 50.h,
                    child: FloatingActionButton(
                      heroTag: "btn3",
                      backgroundColor: AppColors.buttonColor,
                      onPressed: (){

                      },
                      child: Text(
                        'Confirm',
                        style: TextStyle(fontSize: 16.sp, color: AppColors.primary, fontWeight: FontWeight.w600),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                  ),
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}

