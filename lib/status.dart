import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: 40,
            height: 40,
            child: FloatingActionButton(
              backgroundColor: Colors.grey.shade200,
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Icon(Icons.edit,
              size: 25,
                color: Colors.teal,
              ),
              onPressed: (){},
            ),
          ),
          SizedBox(height: 15),

          FloatingActionButton(
            backgroundColor: Colors.teal,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Icon(Icons.camera_alt),
            onPressed: (){},
          ),


        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 70,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0 ,top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Row(
                      children: [

                        Stack(
                          children: [
                            Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/waseem.png"),
                                  fit: BoxFit.cover
                                )
                              ),
                              alignment: Alignment.bottomRight,
                              child: Container(

                                decoration: BoxDecoration(
                                    color: Colors.white,
                                  shape: BoxShape.circle
                                ),
                                padding: const EdgeInsets.all( 2),
                                child: CircleAvatar(radius: 12,
                                  backgroundColor: Colors.teal,
                                  child: Icon(Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],

                        ),


                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('My status',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17
                                ),),
                              SizedBox(height: 5),

                              Text('Tap to add status update',
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
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Text('Recent updates',

                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
            ),

            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index){
              return Container(
                height: 70,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Row(
                        children: [

                          Container(
                            padding: EdgeInsets.all(2),
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                                border: Border.all(width: 2,
                                    color: Colors.teal),
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

                                Text('Yesterday, 11:54 PM',
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





            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 25),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Text('Viewed updates',

                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
                ),
              ),
            ),

            SizedBox(height: 10),

            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 8,
                itemBuilder: (context, index){
                  return Container(
                    height: 70,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Row(
                            children: [

                              Container(
                                padding: EdgeInsets.all(2),
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 2,
                                        color: Colors.grey),
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

                                    Text('Yesterday, 11:54 PM',
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
