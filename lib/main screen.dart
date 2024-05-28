import 'package:flutter/material.dart';
import 'package:whatsapp/New%20group.dart';
import 'package:whatsapp/broadcast.dart';
import 'package:whatsapp/chatroom.dart';
import 'package:whatsapp/setting.dart';
import 'package:whatsapp/status.dart';

import 'calls.dart';
import 'chats.dart';
import 'community.dart';
import 'link.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.teal,
            title: const Text(
              'WhatsApp',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.search_rounded,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: PopupMenuButton(
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
                      if(value == '1'){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return const NewGroup();
                        },));

                      } else if(value == '2'){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return const Broadcast();
                        },));

                      }else if(value == '3'){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return const LinkDevices();
                        },));

                      }else if(value == '4'){

                      }else if(value == '5'){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return const Setting();
                        }));
                      }
                    },
                    itemBuilder: (context) => [
                          const PopupMenuItem(
                            value: '1',
                              child: Text(
                            'New Group',
                            style: TextStyle(fontSize: 13),
                          ),
                          ),
                          const PopupMenuItem(
                              value: '2',
                              child: Text(
                            'New broadcast',
                            style: TextStyle(fontSize: 13),
                          )),
                          const PopupMenuItem(
                              value: '3',
                              child: Text(
                            'Linked device',
                            style: TextStyle(fontSize: 13),
                          )),
                          const PopupMenuItem(
                              value: '4',
                              child: Text(
                            'Starred messages',
                            style: TextStyle(fontSize: 13),
                          )),
                          const PopupMenuItem(
                              value: '5',
                              child: Text(
                            'Setting',
                            style: TextStyle(fontSize: 13),
                          )),
                        ]),
              )
            ],
            bottom: const TabBar(
                indicatorColor: Colors.white,
                labelPadding: EdgeInsets.zero,
                tabs: [
                  SizedBox(
                      width: 5,
                      child: Icon(
                        Icons.groups,
                        color: Colors.white,
                        size: 20,
                      )),
                  Tab(
                    child: Text(
                      "Chats",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Status",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Calls",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ]),
          ),
          body: const TabBarView(children: [
            Community(),
            Chats(),
            Status(),
            Calls(),
          ])),
    );
  }
}
