import 'package:flutter/material.dart';

class NewGroup extends StatefulWidget {
  const NewGroup({Key? key}) : super(key: key);

  @override
  State<NewGroup> createState() => _NewGroupState();
}

class _NewGroupState extends State<NewGroup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('New group',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),
            ),
            SizedBox(height: 5),

            Text('Add participants',
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
    );;
  }
}
