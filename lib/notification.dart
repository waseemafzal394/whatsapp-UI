import 'package:flutter/material.dart';

class Noti extends StatefulWidget {
  const Noti({Key? key}) : super(key: key);

  @override
  State<Noti> createState() => _NotiState();
}

class _NotiState extends State<Noti> {

  bool conTone = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Notification',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        ),

        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_vert_outlined,
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
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10),
              child: ListTile(
                title: const Text('Conversation tones'),
                subtitle: const Text('play sound for incoming and outgoing message'),
                trailing: Switch(
                  activeColor: Colors.teal,
                  onChanged: (value){
                    setState(() {
                      conTone = value;
                    });
                  },
                  value: conTone,
                ),
              ),
            ),

            const Divider(
              thickness: .1,
              color: Colors.grey,
            ),

            const ListTile(
              title: Text('Message',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15
              ),
              ),
            ),
            const ListTile(
              title: Text('Notification tones'),
              subtitle: Text('Default ringtone (Bubble)'),
            ),
            const ListTile(
              title: Text('Vibrate'),
              subtitle: Text('Default'),

            ),
            const ListTile(
              title: Text('popup notification',
              style: TextStyle(
                color: Colors.grey
              ),
              ),
              subtitle: Text('not available',
              style: TextStyle(
                color: Colors.grey
              ),
              ),

            ),
            const ListTile(
              title: Text('Light'),
              subtitle: Text('white'),

            ),
            ListTile(
              title: const Text('use high priority notification'),
              subtitle: const Text('Show previews of notification at the top of the screen'),
              trailing: Switch(
                activeColor: Colors.teal,
                onChanged: (value){
                  setState(() {
                    conTone = value;
                  });
                },
                value: conTone,
              ),
            ),
            ListTile(
              title: const Text('Reaction Notification'),
              subtitle: const Text('Show previews of notification at the top of the screen'),
              trailing: Switch(
                activeColor: Colors.teal,
                onChanged: (value){
                  setState(() {
                    conTone = value;
                  });
                },
                value: conTone,
              ),
            ),

            const Divider(
              thickness: .1,
              color: Colors.grey,
            ),

            const ListTile(
              title: Text('Group',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15
                ),
              ),
            ),
            const ListTile(
              title: Text('Notification tones'),
              subtitle: Text('Default ringtone (Bubble)'),
            ),
            const ListTile(
              title: Text('Vibrate'),
              subtitle: Text('Default'),

            ),
            const ListTile(
              title: Text('Light'),
              subtitle: Text('white'),

            ),
            ListTile(
              title: const Text('use high priority notification'),
              subtitle: const Text('Show previews of notification at the top of the screen'),
              trailing: Switch(
                activeColor: Colors.teal,
                onChanged: (value){
                  setState(() {
                    conTone = value;
                  });
                },
                value: conTone,
              ),
            ),
            ListTile(
              title: const Text('Reaction Notification'),
              subtitle: const Text('Show previews of notification at the top of the screen'),
              trailing: Switch(
                activeColor: Colors.teal,
                onChanged: (value){
                  setState(() {
                    conTone = value;
                  });
                },
                value: conTone,
              ),
            ),

            const Divider(
              thickness: .1,
              color: Colors.grey,
            ),

            const ListTile(
              title: Text('Calls',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15
                ),
              ),
            ),
            const ListTile(
              title: Text('Ringtone'),
              subtitle: Text('Default ringtone (Bubble)'),
            ),
            const ListTile(
              title: Text('Vibrate'),
              subtitle: Text('Default'),

            ),
          ],
        ),
      ),
    );
  }
}
