import 'package:flutter/material.dart';

class Avatar extends StatefulWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  State<Avatar> createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Avatar',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 17
        ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 350,
              child: Stack(
                children: [
                  Container(
                    height: 350,
                    width: 500,
                    color: Colors.black38,
                    child: Image.asset('assets/images/avatar.jpg',
                        fit: BoxFit.cover),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0, bottom: 10),
                      child: FloatingActionButton(

                        backgroundColor: Colors.grey.shade200,
                        elevation: 0,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        child: const Icon(Icons.edit,
                          size: 25,
                          color: Colors.teal,
                        ),
                        onPressed: (){},
                      ),
                    ),
                  ),
                ],

              ),
            ),
            Container(
              height: 60,
              width: 400,
              child: const Padding(
                padding: EdgeInsets.only(left: 18.0, top: 15),
                child: Text('Browse stickers',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
                ),
              ),
            ),
            Container(
              height: 60,
              width: 400,
              child: const Padding(
                padding: EdgeInsets.only(left: 18.0, top: 15),
                child: Text('Create profile photo',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
                ),
              ),
            ),


            const Divider(
              color: Colors.grey,
              thickness: .5,
            ),



            Container(
                height: 60,
                width: 400,
                child: Align(alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: TextButton(onPressed: () {}, child: const Text('Learn more',
                      style: TextStyle(
                          color: Colors.blue
                      ),
                    )),
                  ),
                ),
            ),


            Container(
              height: 60,
              width: 400,
              child: Align(alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: TextButton(onPressed: () {}, child: const Text('Delete avatar',
                    style: TextStyle(
                        color: Colors.red
                    ),
                  )),
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
