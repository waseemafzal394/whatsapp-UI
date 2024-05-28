import 'package:flutter/material.dart';

class StartCommunity extends StatefulWidget {
  const StartCommunity({Key? key}) : super(key: key);

  @override
  State<StartCommunity> createState() => _StartCommunityState();
}

class _StartCommunityState extends State<StartCommunity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    child: Image.asset(
                      'assets/images/cummunity.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Text(
                    'Creat a new Community',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 28.0, right: 28),
                    child: Text(
                      'Bring together a neighborhood, school or more. Create topic-based groups for members, and easily send them admin announcement.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
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
                ],
              ),

              const SizedBox(height: 230),


              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50)
                ),
                height: 40,
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))

                  ),
                  onPressed: () {},
                  child: const Text('Get started',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),

    );
  }
}
