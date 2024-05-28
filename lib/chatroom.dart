import 'package:flutter/material.dart';
import 'package:whatsapp/chat%20profile.dart';

class Chatroom extends StatefulWidget {
  const Chatroom({Key? key}) : super(key: key);

  @override
  State<Chatroom> createState() => _ChatroomState();
}

class _ChatroomState extends State<Chatroom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/images/waseem.png',
                    fit: BoxFit.cover,
                  )),
            ),
            const SizedBox(width: 10),
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const ChatProfile();
                    },
                  ));
                },
                child: const Text(
                  'Waseem Afzal',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      color: Colors.white),
                )),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add_ic_call_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
          PopupMenuButton(
              position: PopupMenuPosition.under,
              icon: const Icon(
                Icons.more_vert_outlined,
                color: Colors.white,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              constraints: const BoxConstraints(
                minWidth: 180,
              ),
              onSelected: (value) {
                if (value == '1') {
                } else if (value == '2') {
                } else if (value == '3') {
                } else if (value == '4') {
                } else if (value == '5') {}
              },
              itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: '1',
                      child: Text(
                        'View contact',
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                    const PopupMenuItem(
                        value: '2',
                        child: Text(
                          'Media, links, and docs',
                          style: TextStyle(fontSize: 13),
                        )),
                    const PopupMenuItem(
                        value: '3',
                        child: Text(
                          'Search',
                          style: TextStyle(fontSize: 13),
                        )),
                    const PopupMenuItem(
                        value: '4',
                        child: Text(
                          'Mute Notification',
                          style: TextStyle(fontSize: 13),
                        )),
                    const PopupMenuItem(
                        value: '5',
                        child: Text(
                          'Disappearing message',
                          style: TextStyle(fontSize: 13),
                        )),
                    const PopupMenuItem(
                        value: '6',
                        child: Text(
                          'Wallpaper',
                          style: TextStyle(fontSize: 13),
                        )),
                    const PopupMenuItem(
                        value: '7',
                        child: Text(
                          'More',
                          style: TextStyle(fontSize: 13),
                        )),
                  ]),
        ],
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, right: 15),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.green.shade300,
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            'hy',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        const SizedBox(width: 7),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              '2:01 PM',
                              style: TextStyle(
                                  fontSize: 10, color: Colors.black38),
                            ),
                            Icon(
                              Icons.keyboard_double_arrow_right,
                              color: Colors.blue,
                              size: 20,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 10),
                child: Container(
                  height: 30,
                  width: 85,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          'yes',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(width: 8),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text(
                          '2:01 PM',
                          style: TextStyle(fontSize: 10, color: Colors.black38),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, right: 15),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 30,
                    width: 165,
                    decoration: BoxDecoration(
                        color: Colors.green.shade300,
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            'how are you?',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        const SizedBox(width: 7),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              '2:01 PM',
                              style: TextStyle(
                                  fontSize: 10, color: Colors.black38),
                            ),
                            Icon(
                              Icons.keyboard_double_arrow_right,
                              color: Colors.blue,
                              size: 20,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 10),
                child: Container(
                  height: 30,
                  width: 105,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          'i \'m fine',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(width: 8),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text(
                          '2:01 PM',
                          style: TextStyle(fontSize: 10, color: Colors.black38),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 10),
                child: Container(
                  height: 30,
                  width: 115,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          'And you?',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(width: 8),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text(
                          '2:01 PM',
                          style: TextStyle(fontSize: 10, color: Colors.black38),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, right: 15),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 30,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.green.shade300,
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Good',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        const SizedBox(width: 7),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              '2:01 PM',
                              style: TextStyle(
                                  fontSize: 10, color: Colors.black38),
                            ),
                            Icon(
                              Icons.keyboard_double_arrow_right,
                              color: Colors.blue,
                              size: 20,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, right: 15),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 65,
                    width: 215,
                    decoration: BoxDecoration(
                        color: Colors.green.shade300,
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 4.0, top: 4),
                          child: Text(
                            'What are you doing now a days?',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        const SizedBox(width: 7),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              '2:01 PM',
                              style: TextStyle(
                                  fontSize: 10, color: Colors.black38),
                            ),
                            Icon(
                              Icons.keyboard_double_arrow_right,
                              color: Colors.blue,
                              size: 20,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 290,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: IconButton(
                              icon:
                                  const Icon(Icons.emoji_emotions_outlined, color: Colors.grey),
                              onPressed: () {},
                            ),
                            suffixIcon: SizedBox(
                              width: 100,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      Icons.add_link_rounded,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () {
                                      // do something
                                    },
                                  ),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.camera_alt,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () {
                                      // do something
                                    },
                                  ),
                                ],
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.white), //<-- SEE HERE
                              borderRadius: BorderRadius.circular(50)
                            ),
                            hintText: 'Enter a search term',
                            helperStyle: const TextStyle(color: Colors.black38)),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 12.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.teal,
                    child: Icon(
                      Icons.keyboard_voice,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
