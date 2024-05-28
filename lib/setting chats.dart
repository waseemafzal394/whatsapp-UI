import 'package:flutter/material.dart';

class SettingChats extends StatefulWidget {
  const SettingChats({super.key});

  @override
  State<SettingChats> createState() => _SettingChatsState();
}

class _SettingChatsState extends State<SettingChats> {
  bool conTone = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Chats',
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ListTile(
              title: Text('Display',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.brightness_6),
              title: Text('Theme'),
              subtitle: Text('System default'),
            ),
            const ListTile(
              leading: Icon(Icons.wallpaper),
              title: Text('Wallpaper'),
            ),

            const Divider(
              thickness: .1,
              color: Colors.grey,
            ),

            const ListTile(
              title: Text('Call setting',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15
                ),
              ),
            ),
            ListTile(
              title: const Padding(
                padding: EdgeInsets.only(left: 52.0),
                child: Text('Enter is send'),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(left: 52.0),
                child: Text('Enter key will send your message'),
              ),
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
              title: const Padding(
                padding: EdgeInsets.only(left: 52.0),
                child: Text('Media visibility'),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(left: 52.0),
                child: Text('Show newly downloaded media in your device\'s gallery'),
              ),
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
            const ListTile(
              title: Padding(
                padding: EdgeInsets.only(left: 52.0),
                child: Text('Font size'),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 52.0),
                child: Text('Medium'),
              ),
            ),

            const Divider(
              thickness: .1,
              color: Colors.grey,
            ),

            const ListTile(
              title: Text('Archived chats',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15
                ),
              ),
            ),
            ListTile(
              title: const Padding(
                padding: EdgeInsets.only(left: 52.0),
                child: Text('Keep chats archived'),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(left: 52.0),
                child: Text('Archived chats will remain archived when you receive a new message'),
              ),
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
              leading: Icon(Icons.backup),
              title: Text('Chat backup'),
            ),
            const ListTile(
              leading: Icon(Icons.logout_sharp),
              title: Text('Transfer chats'),
            ),
            const ListTile(
              leading: Icon(Icons.history),
              title: Text('Chat history'),
            ),







          ],
        ),
      ),
    );
  }
}
