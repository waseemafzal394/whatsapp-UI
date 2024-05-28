import 'package:flutter/material.dart';
import 'package:whatsapp/privacy.dart';
import 'package:whatsapp/profile.dart';
import 'package:whatsapp/setting%20chats.dart';

import 'Avatar.dart';
import 'account.dart';
import 'help.dart';
import 'invite.dart';
import 'notification.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Setting',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),
        ),
        actions: [

          IconButton(
            icon: const Icon(
              Icons.search_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),

        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Profile();
                },));
              },
              child: Container(
                height: 90,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: ClipRRect(borderRadius: BorderRadius.circular(50),child: Image.asset('assets/images/1.jpg',
                              fit: BoxFit.cover,)),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Waseem Afzal',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
                                      color: Colors.black
                                  ),),
                                const SizedBox(height: 5),

                                const Text('Alhamdulillah for everything',
                                  style: TextStyle(
                                      color: Colors.grey
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),

                      const Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: Icon(Icons.border_all_rounded,
                          color: Colors.teal,
                          size: 25,
                        ),
                      ),

                    ],
                  ),
                ),


              ),
            ),
            const Divider(
              color: Colors.black,
              thickness: .1,
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Account();
                },));
              },
              child: Container(
                height: 72,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: [

                            const Icon(Icons.keyboard_voice,
                            color: Colors.grey,
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Account',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Colors.black
                                    ),),
                                  const SizedBox(height: 5),

                                  const Text('Security notification, change number',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),



                    ],
                  ),
                ),


              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Privacy();
                },));
              },
              child: Container(
                height: 72,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: [

                            const Icon(Icons.lock,
                            color: Colors.grey,
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Privacy',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Colors.black
                                    ),),
                                  const SizedBox(height: 5),

                                  const Text('Block contact, disappearing',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  ),
                                  const Text('message',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),



                    ],
                  ),
                ),


              ),
            ),
            GestureDetector(

              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Avatar();
                },));
              },
              child: Container(
                height: 72,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: [

                            const Icon(Icons.emoji_emotions_rounded,
                              color: Colors.grey,),

                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Avatar',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Colors.black
                                    ),),
                                  const SizedBox(height: 5),

                                  const Text('Creat, edit, profile photo',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),



                    ],
                  ),
                ),


              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SettingChats();
                },));
              },
              child: Container(
                height: 72,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: [

                            const Icon(Icons.chat,
                              color: Colors.grey,),

                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Chats',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Colors.black
                                    ),),
                                  const SizedBox(height: 5),

                                  const Text('Theme, wallpapers, chat history',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),



                    ],
                  ),
                ),


              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Noti();
                },));
              },
              child: Container(
                height: 72,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: [

                            const Icon(Icons.notification_important_rounded,
                              color: Colors.grey,),

                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Notification',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Colors.black
                                    ),),
                                  const SizedBox(height: 5),

                                  const Text('Message, group & call tones',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),



                    ],
                  ),
                ),


              ),
            ),
            Container(
              height: 72,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [

                          const Icon(Icons.stop_circle_rounded,
                            color: Colors.grey,),

                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Storage and data',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.black
                                  ),),
                                const SizedBox(height: 5),

                                const Text('Network usage, auto-download',
                                  style: TextStyle(
                                      color: Colors.grey
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),



                  ],
                ),
              ),


            ),
            Container(
              height: 72,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [

                          const Icon(Icons.language_outlined,
                            color: Colors.grey,),

                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('App language',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.black
                                  ),),
                                const SizedBox(height: 5),

                                const Text('English(devices lsngusge)',
                                  style: TextStyle(
                                      color: Colors.grey
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),



                  ],
                ),
              ),


            ),
            GestureDetector(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Help();
              },));
            },
              child: Container(
                height: 72,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: [

                            const Icon(Icons.help_outline,
                              color: Colors.grey,),

                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Help',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Colors.black
                                    ),),
                                  const SizedBox(height: 5),

                                  const Text('Help center, contact us, privacy policy',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),



                    ],
                  ),
                ),


              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Invite();
                },));
              },
              child: Container(
                height: 72,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: [

                            const Icon(Icons.group_rounded,
                              color: Colors.grey,),

                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Invite a friend',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Colors.black
                                    ),),

                                ],
                              ),
                            )
                          ],
                        ),
                      ),



                    ],
                  ),
                ),


              ),
            ),



            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 45),
              child: Column(
                children: [
                  // DecorationImage(image: image)
                  const Text('from',
                    style: TextStyle(
                        color: Colors.grey
                    )
                    ,),

                  const Text('Meta',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),

    );
  }
}
