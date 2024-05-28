import 'package:flutter/material.dart';

class Privacy extends StatefulWidget {
  const Privacy({Key? key}) : super(key: key);

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  bool private = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Privacy',
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
              title: Text('Who can see my personal info',
                style: TextStyle(
                    color: Colors.black38,
                    fontSize: 15
                ),
              ),
            ),
            const ListTile(
              title: Text('Last seen and online'),
              subtitle: Text('Everyone'),
            ),
            const ListTile(
              title: Text('Profile photo'),
              subtitle: Text('Everyone'),

            ),
            const ListTile(
              title: Text('About',

              ),
              subtitle: Text('Everyone',

              ),

            ),
            const ListTile(
              title: Text('Status'),
              subtitle: Text('My contacts'),

            ),
            ListTile(
              title: const Text('Read receipts'),
              subtitle: const Text('if turned off, you would not send or receive Read receipts. Read receipts are always sent for group chats.'),
              trailing: Switch(
                activeColor: Colors.teal,
                onChanged: (value){
                  setState(() {
                    private = value;
                  });
                },
                value: private,
              ),
            ),

            const Divider(
              thickness: .1,
              color: Colors.grey,
            ),

            const ListTile(
              title: Text('Disappearing messages',
                style: TextStyle(
                    color: Colors.black38,
                    fontSize: 15
                ),
              ),
            ),
            const ListTile(
              title: Text('Default message time'),
              subtitle: Text('Start new chats with disappearingf messages set to your time'),
              trailing: Padding(
                padding: EdgeInsets.only(right: 20, top: 10),
                child: Text('off',
                style: TextStyle(
                  color: Colors.grey
                ),
                ),
              )
            ),
            const Divider(
              thickness: .1,
              color: Colors.grey,
            ),

            const ListTile(
              title: Text('Group'),
              subtitle: Text('Everyone'),
            ),
            const ListTile(
              title: Text('Live location'),
              subtitle: Text('None'),

            ),
            const ListTile(
              title: Text('Calls',

              ),
              subtitle: Text('ilence unknown callers',

              ),

            ),
            const ListTile(
              title: Text('Blocked contacts'),
              subtitle: Text('2'),

            ),
            const ListTile(
              title: Text('Fingerprint lock'),
              subtitle: Text('Disabled'),

            ),
          ],
        ),
      ),
    );
  }
}
