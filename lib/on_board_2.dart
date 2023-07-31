
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whats_app/sign_in_up_board.dart';

import 'core/utils/app_color.dart';
import 'core/utils/app_images.dart';
import 'core/utils/app_strings.dart';
import 'on_board_3.dart';

class onBoard2 extends StatelessWidget{
  onBoard2 ({super.key});
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
                  child: Image.asset(AppImages.imgPath2)),
              SizedBox(
                height: 48,
              ),
              // Title
              Text(AppStrings.onBoardingTitleTwo,
                style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: AppColor.black),

              ),
              // subTitle
              Text(AppStrings.onBoardingSubTitleTwo,
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: AppColor.secondaryColor,
                ),
              textAlign: TextAlign.center,
              ),

              // Back
              Spacer(),
              Row(

                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: ElevatedButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: Row(
                          children: [
                           Icon(Icons.arrow_back),
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
                  //Next
                  Spacer(),
                  SizedBox(
                    height: 60,
                    width: 125,
                    child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) =>
                              onBoard3()));
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