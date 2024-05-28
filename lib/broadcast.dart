import 'package:flutter/material.dart';

class Broadcast extends StatefulWidget {
  const Broadcast({Key? key}) : super(key: key);

  @override
  State<Broadcast> createState() => _BroadcastState();
}

class _BroadcastState extends State<Broadcast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: const Icon(Icons.arrow_right_alt),
        onPressed: (){},
      ),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('New broadcast',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),
            ),
            SizedBox(height: 5),

            Text('0 of 20 selected',
              style: TextStyle(
                  fontSize: 11
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

        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 18.0, bottom: 18),
              child: Column(
                children: [
                  Container(
                      height: 30,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 5),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text('only contacts with +92 301 7700352 in their address book will ',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14
                            ),
                          ),
                        ),
                      )


                  ),

                  Text('receive your broadcast messages',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: .1,
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
