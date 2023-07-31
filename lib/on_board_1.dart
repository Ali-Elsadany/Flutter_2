import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whats_app/core/utils/app_color.dart';
import 'package:whats_app/core/utils/app_images.dart';
import 'package:whats_app/core/utils/app_strings.dart';
import 'package:whats_app/sign_in_up_board.dart';

import 'on_board_2.dart';

class onBoard1 extends StatelessWidget{
  onBoard1 ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 30,),
            // Skip
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) =>
                        signInUp()));
                  },
                  child: Text(AppStrings.skip,style:GoogleFonts.poppins(color: AppColor.primaryColor),),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            //Image
            SizedBox(
                height: 300,
                width: 300,
                child: Image.asset(AppImages.imgPath1)),
                SizedBox(
                  height: 48,
                ),
                // Title
                Text(AppStrings.onBoardingTitleOne,
                  style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: AppColor.black),

                ),
                // subTitle
                Text(AppStrings.onBoardingSubTitleOne,
                  style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      color: AppColor.secondaryColor
                  ),

                ),
            // Next
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 60,
                  width: 125,
                  child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) =>
                            onBoard2()));
                      },
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(AppStrings.next,style: GoogleFonts.poppins(),),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.arrow_forward)
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
            )
          ],
        ),
      )




    );
  }

}