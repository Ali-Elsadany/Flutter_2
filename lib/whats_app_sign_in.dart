import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whats_app/core/utils/app_color.dart';
import 'package:whats_app/core/utils/app_images.dart';
import 'package:whats_app/core/utils/app_strings.dart';

class whatsAppIn extends StatelessWidget{

  whatsAppIn({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          drawer: Drawer(
            backgroundColor: Colors.green[300],
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 100,
                    backgroundImage: AssetImage('assets/images/onBoard5.png'),
                  ),
       //Image.asset(AppImages.imgPath5),
                  //Image.asset(AppImages.imgPath5),
                  SizedBox(height: 30,),
                  Text('Ali Elsadany',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold)),
                  SizedBox(height: 0,),
                  Text('Android Developer',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  SizedBox(height: 20,),
                  Container(
                    height: 30,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.phone),
                        SizedBox(width: 20),
                        Text('01147722385')
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 30,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.mail),
                        SizedBox(width: 20),
                        Text('ali@gmail.com')
                      ],
                    ),
                  ),




                ],
              ),
            ),
          ),
          appBar: AppBar( centerTitle: true,title: Text('WhatsApp'),
            backgroundColor: Colors.green,
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(child: Text('Chats'),),
                Tab(child: Text('Status'),),
                Tab(child: Text('Calls')),
              ],
            ),
          ),
          body: TabBarView(
              children: [
                // Chats
                Center(
                  child: Column(
                    children: [
                      /*
                Expanded(
                  child: ListView.builder(itemBuilder: (context,index){
                    return Center(child: Text('${index+1}'),);
                  },
                    itemCount: 10,

                  ),
                )
*/
                      ListTile(
                          leading: CircleAvatar(backgroundColor: Colors.deepOrange,),

                          trailing: Column(children: [
                            SizedBox(height: 10,),
                            Text(style: TextStyle(color: Colors.green),'1:30 PM'),
                            CircleAvatar(radius: 10,backgroundColor: Colors.green,child: Text('3'),)
                          ],),
                          title: Text('Mohamed Hosny'),
                          subtitle: Row(children: [
                            Icon(Icons.mic),Text('0:07'),
                          ],)
                      ),// Mohamed Hosny
                      ListTile(
                          leading: CircleAvatar(backgroundColor: Colors.grey,),
                          trailing: Text('Friday'),
                          title: Text('Mohamed Mosa'),
                          subtitle: Row(children: [
                            Icon(Icons.check),Icon(Icons.camera_alt),Text('Photo'),
                          ],)
                      ),// Mohamed Mosa
                      ListTile(
                          leading: CircleAvatar(backgroundColor: Colors.yellow,),
                          trailing: Text('11:45 AM'),
                          title: Text('Mohamed Samir'),
                          subtitle: Row(children: [
                            Icon(Icons.check),Text('ازيك يا هندساه اخبارك اي ؟'),
                          ],)
                      ),// Mohamed Samir
                      ListTile(
                          leading: CircleAvatar(backgroundColor: Colors.lightGreenAccent,),
                          trailing: Text('1:12 AM'),
                          title: Text('Ahmed Lotfy'),
                          subtitle: Row(children: [
                            Icon(Icons.done_all,color: Colors.blue),Text('متنساش الفلاشة وانت جاي الكلية'),
                          ],)
                      ),// Ahmed Lotfy
                      ListTile(
                          leading: CircleAvatar(backgroundColor: Colors.black,),
                          trailing: Column(children: [
                            SizedBox(height: 10,),
                            Text('11:45 AM',style: TextStyle(color: Colors.green),),
                            CircleAvatar(backgroundColor: Colors.green,child: Text('1'),radius: 10,)
                          ],),
                          title: Text('Emad Gamal'),
                          subtitle: Row(children: [
                            Text('You are a great man'),
                          ],)
                      ),// Emad Gamal
                      ListTile(
                          leading: CircleAvatar(backgroundColor: Colors.cyanAccent,),
                          trailing: Column(children: [
                            SizedBox(height: 10,),
                            Text('11:45 AM',style: TextStyle(color: Colors.green),),
                            CircleAvatar(backgroundColor: Colors.green,radius: 10,child: Text('2'),)
                          ],),
                          title: Text('Farah'),
                          subtitle: Row(children: [
                            Icon(Icons.emoji_emotions_outlined),Text('Sticker'),
                          ],)
                      ),// Farah
                      ListTile(
                        leading: CircleAvatar(backgroundColor: Colors.deepPurple,),
                        title: Text('Shrouk'),
                        trailing: CircleAvatar(backgroundColor: Colors.black,child: Icon(Icons.camera_alt,color: Colors.white,),radius: 25,),
                      )// Shrouk
                    ],
                  ),
                ),
                // Status
                Center(
                  child: Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(backgroundImage: AssetImage('assets/images/onBoard5.png'),),
                        title: Text('My status'),
                        subtitle: Text('Tap to add status update'),
                      ),
                      Row(
                        children: [
                          SizedBox(width: 17,),
                          Text('Viewed updates',style: TextStyle(color: Colors.grey[600],),),
                        ],
                      ),
                      ListTile(
                          leading: CircleAvatar(backgroundColor: Colors.grey,),
                          title: Text('Mohamed Mosa'),
                          subtitle: Row(children: [
                            Text('Today, 7:44 pm')
                          ],)
                      ),
                      ListTile(
                          leading: CircleAvatar(backgroundColor: Colors.purple,),
                          title: Text('Medhat'),
                          subtitle: Row(children: [
                            Text('Yesterday, 11:49 pm'),
                          ],)
                      ),
                    ],
                  ),
                ),

                // Calls
                Center(
                  child: Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(backgroundColor: Colors.green,child: Icon(Icons.link,color: Colors.white,)),
                        title: Text('Create call link'),
                        subtitle: Text('Share a link for your WhatsApp call'),
                      ),
                      Row(
                        children: [
                          SizedBox(width: 17,),
                          Text('Recent',style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      ListTile(
                          leading: CircleAvatar(backgroundColor: Colors.grey,),
                          trailing: Icon(Icons.phone,color: Colors.green,),
                          title: Text('Mohamed Mosa (2)',style: TextStyle(color: Colors.red),),
                          subtitle: Row(children: [
                            Icon(Icons.arrow_downward,color: Colors.red,),Text('Today, 9:13 pm')
                          ],)
                      ),
                      ListTile(
                          leading: CircleAvatar(backgroundColor: Colors.lightGreenAccent,),
                          trailing: Icon(Icons.phone,color: Colors.green,),
                          title: Text('Ahmed lotfy (2)'),
                          subtitle: Row(children: [
                            Icon(Icons.arrow_outward_outlined,color: Colors.green,),Text('23 July, 8:01 am')
                          ],)
                      ),
                    ],
                  ),
                ),
              ]
          )

      ),
    );

  }

}