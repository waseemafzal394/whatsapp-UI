import 'package:flutter/material.dart';

class ChatProfile extends StatefulWidget {
  const ChatProfile({super.key});

  @override
  State<ChatProfile> createState() => _ChatProfileState();
}

class _ChatProfileState extends State<ChatProfile> {


  bool conTone = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 120.0, top: 40),
                      child: Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/2.jpeg"),
                              fit: BoxFit.cover
                            )
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 120.0, top: 10),
                      child: Text('Waseem Afzal',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600
                      ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.only(left: 120.0),
                      child: Text('+92 301 7700352',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15
                      ),
                      ),
                    ),

                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 10.0,bottom: 100),
                  child: PopupMenuButton(
                      position: PopupMenuPosition.under,
                      icon: const Icon(
                        Icons.more_vert_outlined,
                        color: Colors.black,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      constraints: const BoxConstraints(
                        minWidth: 180,
                      ),
                      onSelected: (value) {
                        if(value == '1'){



                        } else if(value == '2'){


                        }else if(value == '3'){

                        }
                      },
                      itemBuilder: (context) => [
                        const PopupMenuItem(
                          value: '1',
                          child: Text(
                            'Share',
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                        const PopupMenuItem(
                            value: '2',
                            child: Text(
                              'Edit',
                              style: TextStyle(fontSize: 13),
                            )),
                        const PopupMenuItem(
                            value: '3',
                            child: Text(
                              'view in address book',
                              style: TextStyle(fontSize: 13),
                            )),
                        const PopupMenuItem(
                            value: '4',
                            child: Text(
                              'Verify security code',
                              style: TextStyle(fontSize: 13),
                            )),
                      ]),
                )
              ],
            ),
            const SizedBox(height: 20),
            
            Padding(
              padding: const EdgeInsets.only(left: 80.0, right: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Column(
                    children: [
                      IconButton(onPressed: (){}, icon: const Icon(Icons.call,
                      color: Colors.teal,
                      )),

                      const SizedBox(height: 10),
                      const Text('Audio',
                      style: TextStyle(
                        color: Colors.teal
                      ),
                      )
                    ],
                  ),

                  Column(
                    children: [
                      IconButton(onPressed: (){}, icon: const Icon(Icons.video_camera_back_sharp,
                        color: Colors.teal,
                      )),
                      const SizedBox(height: 10),
                      const Text('Video',
                        style: TextStyle(
                            color: Colors.teal
                        ),
                      )
                    ],
                  ),

                  Column(
                    children: [
                      IconButton(onPressed: (){}, icon: const Icon(Icons.search,
                        color: Colors.teal,
                      )),
                      const SizedBox(height: 10),
                      const Text('Search',
                        style: TextStyle(
                            color: Colors.teal
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),

            const Divider(
              thickness: .2,
              color: Colors.grey,
            ),

            const SizedBox(height: 3),

            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 18.0),
                        child: Text('Media, links, and docs',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Row(
                          children: [
                            const Text('20',
                            style: TextStyle(
                              color: Colors.grey
                            ),
                            ),
                            const Icon(Icons.arrow_forward_ios_outlined,
                            color: Colors.grey,
                              size: 15,
                            )
                          ],
                        ),
                      )
                    ],
                  ),

                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    height: 150,
                    child: ListView(
                      // This next line does the trick.
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset('assets/images/1.jpg',
                            fit: BoxFit.cover,)),
                          width: 150,
                        ),
                        const SizedBox(width: 5),

                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset('assets/images/1.jpg',
                            fit: BoxFit.cover,)),
                          width: 150,
                        ),
                        const SizedBox(width: 5),

                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset('assets/images/1.jpg',
                            fit: BoxFit.cover,)),
                          width: 150,
                        ),
                        const SizedBox(width: 5),

                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset('assets/images/1.jpg',
                            fit: BoxFit.cover,)),
                          width: 150,
                        ),
                        const SizedBox(width: 5),
                      ],
                    ),
                  ),

                  const Divider(
                    thickness: .2,
                    color: Colors.grey,
                  ),

                  ListTile(
                    leading: const Icon(Icons.add_alert_rounded,
                    size: 20,
                    ),
                    title: const Text('Mute notification'),
                    trailing: Switch(
                      activeColor: Colors.teal,
                      onChanged: (value){
                        setState(() {
                          conTone = value;
                        });
                      },
                      value: conTone,
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.music_note,
                    size: 20),
                    title: Text('Custom notification'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.perm_media,
                    size: 20,
                    ),
                    title: Text('Media visibility'),
                  ),

                  const Divider(
                    thickness: .2,
                    color: Colors.grey,
                  ),

                  const ListTile(
                    leading: Icon(Icons.lock,
                    size: 20,
                    ),
                    title: Text('Encryption'),
                    subtitle: Text('Message and calls are end-to-end encrypted. Tap to verify'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.disabled_visible_outlined,
                      size: 20,
                    ),
                    title: Text('Disappearing message'),
                    subtitle: Text('off'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.lock,
                      size: 20,
                    ),
                    title: Text('Chat lock'),
                  ),

                  const Divider(
                    thickness: .2,
                    color: Colors.grey,
                  ),


                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 15),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: const Text('No groups in common',

                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    height: 60,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [

                              Container(
                                padding: const EdgeInsets.all(2),
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),

                                child: const CircleAvatar(radius: 18,
                                  backgroundColor: Colors.teal,
                                  child: Icon(Icons.group_rounded,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),


                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Create group with Waseem Afzal',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 17
                                      ),),
                                    const SizedBox(height: 5),


                                  ],
                                ),
                              )
                            ],
                          ),

                        ],
                      ),
                    ),


                  ),

                  const Divider(
                    thickness: .2,
                    color: Colors.grey,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 15),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: const Text('Other phones',

                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ListTile(
                    title: const Text('+92 301 7700352',
                    style: TextStyle(
                      fontWeight: FontWeight.w600
                    ),
                    ),
                    subtitle: const Text('Phone'),
                    trailing: Wrap(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.message,
                          color: Colors.teal,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.call,
                            color: Colors.teal,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.video_camera_back,
                            color: Colors.teal,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),

                  ),

                  const Divider(
                    thickness: .2,
                    color: Colors.grey,
                  ),


                  const ListTile(
                    leading: Icon(Icons.block,
                      color: Colors.redAccent,
                      size: 20,
                    ),
                    title: Text('Block Waseem Afzal',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.w600,
                      fontSize: 17
                    ),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.clean_hands_rounded,
                      color: Colors.redAccent,
                      size: 20,
                    ),
                    title: Text('Report Waseem Afzal',
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.w600,
                          fontSize: 17
                      ),
                    ),
                  ),

                  const Divider(
                    thickness: .2,
                    color: Colors.grey,
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
