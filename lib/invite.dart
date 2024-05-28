import 'package:flutter/material.dart';

class Invite extends StatefulWidget {
  const Invite({Key? key}) : super(key: key);

  @override
  State<Invite> createState() => _InviteState();
}

class _InviteState extends State<Invite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Invite a friend',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),
            ),

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
                            child: Icon(Icons.share,
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
                              Text('Share link',
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

            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 15, bottom: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Text('From Contact',

                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
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



                        ],
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
