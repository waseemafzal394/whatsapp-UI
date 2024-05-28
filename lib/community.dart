import 'package:flutter/material.dart';
import 'package:whatsapp/start%20cummunity.dart';

class Community extends StatefulWidget {
  const Community({Key? key}) : super(key: key);

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
              child: Image.asset(
                'assets/images/2211.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const Text(
              'Stay connected with the community',
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 28.0, right: 28),
              child: Text(
                'Communities bring members together in topic-based groups, and make it easy to get admin announcements. Any community youre added to will appear here.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    height: 1.5, fontWeight: FontWeight.w600, fontSize: 13),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
                ),
                TextButton(onPressed: () {}, child: const Text('See example communities',
                style: TextStyle(
                  color: Colors.teal
                ),
                )),
                
                const Icon(Icons.arrow_forward_ios_outlined,
                color: Colors.teal,
                  size: 15,
                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.only( top: 20),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50)
                ),
                height: 50,
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))

                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const StartCommunity();
                    },));
                  },
                  child: const Text('start your community',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18
                  ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
