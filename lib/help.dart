import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Help',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),
        ),
      ),

      body: Column(
        children: [
          Container(
            height: 70,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: const [

                        Icon(Icons.help_outline,
                          color: Colors.grey,
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text('Help center',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black
                            ),),
                        )
                      ],
                    ),
                  ),



                ],
              ),
            ),


          ),
          Container(
            height: 70,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [

                        Icon(Icons.group_rounded,
                          color: Colors.grey,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Contact us',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.black
                                ),),

                              Text('Question? Need help?',
                              style: TextStyle(
                                color: Colors.grey
                              ),
                              )

                            ],
                          ),
                        )
                      ],
                    ),
                  ),



                ],
              ),
            ),


          ),
          Container(
            height: 60,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [

                        Icon(Icons.file_present_sharp,
                          color: Colors.grey,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Term and Privacy Policy',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.black
                                ),),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),



                ],
              ),
            ),


          ),
          Container(
            height: 60,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [

                        Icon(Icons.info_outline,
                          color: Colors.grey,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('App info',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.black
                                ),),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),



                ],
              ),
            ),


          ),

        ],
      ),
    );
  }
}
