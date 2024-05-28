import 'package:flutter/material.dart';

import 'call info.dart';
import 'call list.dart';

class Calls extends StatefulWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: const Icon(Icons.add_ic_call_rounded),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return const CallList();
          },));
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 70,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0 ,top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Row(
                      children: [

                        Container(

                          decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle
                          ),
                          padding: const EdgeInsets.all( 2),
                          child: widget,
                        ),


                        Padding(
                          padding: const EdgeInsets.only(left: 13.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Create call link',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17
                                ),),
                              SizedBox(height: 5),

                              Text('Share a link for your Whatsapp call',
                                style: TextStyle(
                                    color: Colors.grey
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),


                  ],
                ),
              ),


            ),

            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 25),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: const Text('Recent',

                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
            ),

          const SizedBox(height: 10),

          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 15,
              itemBuilder: (context, index){
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const CallInfo();
                },));
              },
              child: Container(
                height: 70,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [

                          Container(
                            padding: const EdgeInsets.all(2),
                            height: 55,
                            width: 55,
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
                                      fontSize: 15
                                  ),),
                                const SizedBox(height: 5),

                                Row(
                                  children: const [
                                    Icon(Icons.arrow_upward,color: Colors.teal,size: 15),
                                    Text('Yesterday, 11:54 PM',
                                      style: TextStyle(
                                          color: Colors.grey
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),

                      const Padding(
                        padding: EdgeInsets.only(right: 12.0),
                        child: Icon(Icons.call,
                          color: Colors.teal,
                          size: 20,
                        ),
                      ),


                    ],
                  ),
                ),


              ),
            );
          }),



          ],
        ),
      ),
    );
  }
}
