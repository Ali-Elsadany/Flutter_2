import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whats_app/sign_in_up_board.dart';

import 'core/utils/app_color.dart';
import 'core/utils/app_images.dart';
import 'core/utils/app_strings.dart';

class onBoard3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            //Image
            SizedBox(
                height: 300,
                width: 300,
                child: Image.asset(AppImages.imgPath3)),
            SizedBox(
              height: 48,
            ),
            // Title
            Text(AppStrings.onBoardingTitleThree,
              style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: AppColor.black),

            ),
            // subTitle
            Text(AppStrings.onBoardingSubTitleThree,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: AppColor.secondaryColor,
              ),
              textAlign: TextAlign.center,
            ),
                //Start
                Spacer(),
                Row(

                  children: [
                    SizedBox(
                      height: 60,
                      width: 352,
                      child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) =>
                                signInUp()));
                          },
                          child: Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              SizedBox(
                                width: 115,
                              ),
                              Text(AppStrings.start,style: GoogleFonts.poppins(),),


                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.primaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          )
                      ),
                    ),
                  ],
                ),

          ],
        ),
      )
    );
  }

}