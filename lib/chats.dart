import 'package:flutter/material.dart';

import 'chatroom.dart';
import 'contact.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: const Icon(Icons.message),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return const Contact();
          },));
        }
      ),
      body: ListView.builder(
        itemCount: 15,
          itemBuilder: (context, index){
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Chatroom();
                },));
              },
              child: Container(
                height: 60,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
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
                                      fontSize: 15,
                                      color: Colors.black
                                  ),),
                                const SizedBox(height: 5),

                                const Text('Kidhar abhi?',
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
                        padding: EdgeInsets.only(right: 20.0, bottom: 20),
                        child: Text('yesterday',
                          style: TextStyle(
                              color: Colors.grey
                          ),
                        ),
                      )

                    ],
                  ),
                ),


              ),
            );
          }),
    );
  }
}
