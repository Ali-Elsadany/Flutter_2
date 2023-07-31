import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whats_app/core/utils/app_color.dart';
import 'package:whats_app/core/utils/app_strings.dart';
import 'package:whats_app/whats_app_sign_in.dart';
import 'package:whats_app/whats_app_sign_up.dart';

import 'core/utils/app_images.dart';

class signInUp extends StatefulWidget {
  @override
  profilePageState createState() => profilePageState();
}

class profilePageState extends State<signInUp> {
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  final forEmail = TextEditingController();
  final forPass = TextEditingController();
  bool isVis = true;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                //Image
                SizedBox(
                    height: 300,
                    width: 300,
                    child: Image.asset(AppImages.imgPath4)),


                // Tab Bar
                SingleChildScrollView(
                  child: SizedBox(
                    height: 90,
                    child: AppBar(
                      backgroundColor: AppColor.white,
                      bottom: TabBar(
                        indicatorColor: AppColor.primaryColor,

                        tabs: [
                          Tab(
                            child: Text(AppStrings.onBoardingTabBar1,style: GoogleFonts.poppins(color: AppColor.primaryColor,fontWeight: FontWeight.w700,fontSize: 16),),
                          ),
                          Tab(
                            child: Text(AppStrings.onBoardingTabBar2,style: GoogleFonts.poppins(color: AppColor.primaryColor,fontWeight: FontWeight.w700,fontSize: 16),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // create widgets for each tab bar here
                Expanded(
                  child: TabBarView(
                    children: [
                      // first tab bar
                      SingleChildScrollView(
                        child: Container(
                          color: AppColor.white,
                          child: Center(

                            //Email
                            child: Column(
                              children: [
                                SizedBox(height: 20,),
                                TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  controller: forEmail,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.mail,color: AppColor.primaryColor,),
                                    hintText: 'E-mail',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: AppColor.primaryColor),borderRadius:BorderRadius.circular(20),

                                    ),
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                                    errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red),borderRadius: BorderRadius.circular(20)),
                                    labelText: 'E-mail',

                                  ),
                                  validator: (value){
                                    if(value!.isEmpty){
                                      return 'Enter Your Email';
                                    }
                                    if(!value!.contains('ali@gmail.com')){
                                      return 'Email not Valid';
                                    }

                                    return null;
                                  },

                                ),
                            SizedBox(height: 20,),
                                //Password
                            TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              controller: forPass,
                              obscureText: isVis,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock,color: AppColor.primaryColor,),
                                hintText: 'Password',
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: AppColor.primaryColor),
                                    borderRadius: BorderRadius.circular(20)),
                                labelText: 'Password',
                                errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red),borderRadius: BorderRadius.circular(20)),
                                //suffixIcon: Icon(Icons.visibility),
                                suffixIcon: IconButton(
                                  onPressed: (){setState(() {
                                    isVis = !isVis;
                                  });
                                  },
                                  icon: isVis ? Icon(Icons.visibility_off,color: AppColor.primaryColor,) : Icon(Icons.visibility ,color: AppColor.primaryColor,),
                                ),
                              ),
                              validator: (value){
                                if(value!.isEmpty){
                                  return 'Enter Your Password';
                                }
                                if(!value!.contains('ali')){
                                  return 'Password not Valid';
                                }
                                return null;
                              },
                            ),
                                //Sign in Button
                                SizedBox(height: 80,),
                                ElevatedButton(onPressed: (){
                                  if(formKey.currentState!.validate()) {
                                    Navigator.push(
                                        context, MaterialPageRoute(builder: (context) =>
                                        whatsAppIn()));
                                  }
                                },
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 110,
                                      ),
                                      Text(AppStrings.onBoardingTabBar1,style: GoogleFonts.poppins(),),


                                    ],
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColor.primaryColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10)
                                      )
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),

                      // second tab bar
                      SingleChildScrollView(
                        child: Container(
                          color: AppColor.white,
                          child: Center(
                            child: Column(
                              children: [
                                SizedBox(height: 20,),
                                //Name
                                TextFormField(
                                  keyboardType: TextInputType.name,
                                  controller: nameController,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.person,color: AppColor.primaryColor,),
                                    hintText: 'Name',
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: AppColor.primaryColor),
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                                    errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red),borderRadius: BorderRadius.circular(20)),
                                    labelText: 'Name',
                                  ),
                                  validator: (value){
                                    if(value!.isEmpty){
                                      return 'Please Enter Your Name';
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(height: 20,),
                                //Phone
                                TextFormField(
                                  keyboardType: TextInputType.phone,
                                  controller: phoneController,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.phone,color: AppColor.primaryColor,),
                                    hintText: 'Phone',
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: AppColor.primaryColor),
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                                    errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red),borderRadius: BorderRadius.circular(20)),
                                    labelText: 'Phone',
                                  ),
                                  validator: (value){
                                    if(value!.isEmpty){
                                      return 'Please Enter Your Phone';
                                    }

                                    return null;
                                  },
                                ),
                                SizedBox(height: 20,),
                                //Email
                                TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  controller: emailController,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.mail,color: AppColor.primaryColor,),
                                    hintText: 'Email',
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: AppColor.primaryColor),
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                                    errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red),borderRadius: BorderRadius.circular(20)),
                                    labelText: 'Email',
                                  ),
                                  validator: (value){
                                    if(value!.isEmpty){
                                      return 'Please Enter Your Email';
                                    }
                                    if(!value!.contains('@gmail.com')){
                                      return 'Enter Valid Email *Something@gmail.com*';

                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(height: 20,),
                                //Password
                                TextFormField(
                                  keyboardType: TextInputType.visiblePassword,
                                  controller: forPass,
                                  obscureText: isVis,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.lock,color: AppColor.primaryColor,),
                                    hintText: 'Password',
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: AppColor.primaryColor),
                                        borderRadius: BorderRadius.circular(20)),
                                    labelText: 'Password',
                                    errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red),borderRadius: BorderRadius.circular(20)),
                                    //suffixIcon: Icon(Icons.visibility),
                                    suffixIcon: IconButton(
                                      onPressed: (){setState(() {
                                        isVis = !isVis;
                                      });
                                      },
                                      icon: isVis ? Icon(Icons.visibility_off,color: AppColor.primaryColor,) : Icon(Icons.visibility ,color: AppColor.primaryColor,),
                                    ),
                                  ),
                                  validator: (value){
                                    if(value!.isEmpty){
                                      return 'Enter Your Password';
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(height: 20,),
                                ElevatedButton(
                                  onPressed: (){
                                    if(formKey.currentState!.validate()) {
                                      Navigator.push(
                                          context, MaterialPageRoute(builder: (context) =>
                                          whatsAppUp(nameController.text,phoneController.text,emailController.text)));
                                    }
                                  },
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 110,
                                      ),
                                      Text(AppStrings.onBoardingTabBar2,style: GoogleFonts.poppins(),),


                                    ],
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColor.primaryColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10)
                                      )
                                  ),
                                )
                              ],
                            ),
                            ),
                          ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}