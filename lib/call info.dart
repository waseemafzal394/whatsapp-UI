import 'package:flutter/material.dart';

class CallInfo extends StatefulWidget {
  const CallInfo({super.key});

  @override
  State<CallInfo> createState() => _CallInfoState();
}

class _CallInfoState extends State<CallInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Call info',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18
          ),
        ),
        actions: [

          IconButton(
            icon: const Icon(
              Icons.message,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.more_vert_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              ;
            },
          )
        ],
      ),
      backgroundColor: Colors.white,
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50)
              ),
              child: ClipRRect(borderRadius: BorderRadius.circular(50),child: Image.asset('assets/images/1.jpg',
                fit: BoxFit.cover,)),
            ),
            title: const Text('Waseem Afzal',
              style: TextStyle(
                  fontWeight: FontWeight.w600
              ),
            ),
            subtitle: const Text('Alhamdullah'),
            trailing: Wrap(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.call,
                    color: Colors.teal,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    Icons.video_camera_back,
                    color: Colors.teal,
                  ),
                  onPressed: () {},
                ),
              ],
            ),

          ),

          const Divider(
            thickness: .2,
            color: Colors.grey,
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 75),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: const Text('Today',

                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
            ),
          ),

          ListTile(
            leading: const Icon(Icons.call_missed_outgoing,
              size: 25,
              color: Colors.teal,
            ),
            title: const Text('Outgoing'),
            subtitle: Row(
              children: [
                const Icon(Icons.call,
                size: 15,
                ),
                const Text('11:10 AM'),
              ],
            ),
            trailing: const Text('Not answersd',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15
            ),
            ),
          ),
        ],
      ),

    );
  }
}
