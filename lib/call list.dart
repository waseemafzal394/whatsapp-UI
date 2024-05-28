import 'package:flutter/material.dart';

class CallList extends StatefulWidget {
  const CallList({Key? key}) : super(key: key);

  @override
  State<CallList> createState() => _CallListState();
}

class _CallListState extends State<CallList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Select contact',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),
            ),
            SizedBox(height: 5),
            Text('20 comtact',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w200
              ),
            )
          ],
        ),
        actions: [

          IconButton(
            icon: Icon(
              Icons.search_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              ;
            },
          )
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0 ,top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Row(
                      children: [

                        Container(
                          height: 45,
                          width: 45,


                          decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle
                          ),
                          padding: const EdgeInsets.all( 2),
                          child: const CircleAvatar(radius: 18,
                            backgroundColor: Colors.teal,
                            child: Icon(Icons.leak_add_outlined,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),


                        Padding(
                          padding: const EdgeInsets.only(left: 13.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('New call link',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17
                                ),),


                            ],
                          ),
                        )
                      ],
                    ),


                  ],
                ),
              ),


            ),
            Container(
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
                          padding: const EdgeInsets.all(2),
                          height: 45,
                          width: 45,
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
                            children: const [
                              Text('New group call',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17
                                ),),
                              SizedBox(height: 5),


                            ],
                          ),
                        )
                      ],
                    ),

                  ],
                ),
              ),


            ),
            Container(
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
                          padding: const EdgeInsets.all(2),
                          height: 45,
                          width: 45,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle
                          ),

                          child: const CircleAvatar(radius: 18,
                            backgroundColor: Colors.teal,
                            child: Icon(Icons.person_add,
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
                            children: const [
                              Text('New contact',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17
                                ),),
                              SizedBox(height: 5),


                            ],
                          ),
                        )
                      ],
                    ),

                    const Padding(
                      padding: EdgeInsets.only(right: 30.0),
                      child: Icon(Icons.backup_table_rounded,
                        color: Colors.teal,
                        size: 20,
                      ),
                    ),


                  ],
                ),
              ),


            ),


            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (context, index){
                  return Container(
                    height: 60,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Row(
                            children: [
                              Container(
                                height: 45,
                                width: 45,
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
                                  children: const [
                                    Text('Waseem Afzal',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15,
                                          color: Colors.black
                                      ),),
                                    SizedBox(height: 5),

                                    Text('Alhamdulillah for everything',
                                      style: TextStyle(
                                          color: Colors.grey
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),

                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(right: 20.0),
                                child: Icon(Icons.call,
                                  color: Colors.teal,
                                  size: 25,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 20.0),
                                child: Icon(Icons.videocam_sharp,
                                  color: Colors.teal,
                                  size: 25,
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),


                  );
                }),
          ],
        ),
      ),
    );;
  }
}
