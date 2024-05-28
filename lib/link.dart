import 'package:flutter/material.dart';

class LinkDevices extends StatefulWidget {
  const LinkDevices({Key? key}) : super(key: key);

  @override
  State<LinkDevices> createState() => _LinkDevicesState();
}

class _LinkDevicesState extends State<LinkDevices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Linked Devices',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18
        ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                child: Image.asset(
                  'assets/images/link.jpg',
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 28.0, right: 28),
                child: Text(
                  'Use WhatApp on Web, Desktop, and other devices.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      height: 1.5, fontWeight: FontWeight.w500, fontSize: 15),
                ),
              ),
              TextButton(onPressed: () {}, child: const Text('Learn more',
                style: TextStyle(
                    color: Colors.teal,
                  fontWeight: FontWeight.w600
                ),
              )),

              const SizedBox(height: 10),


              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50)
                ),
                height: 40,
                width: 320,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))

                  ),
                  onPressed: () {},
                  child: const Text('Link a device',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Row(
                  children: [
                    const Icon(Icons.lock,
                    color: Colors.grey,
                    size: 14),

                    const Text('Your personal message ara',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14
                    )
                      ,
                    ),

                    const Text(
                      '',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                    ),
                    TextButton(onPressed: () {}, child: const Text('end-to-end encrypted',
                      style: TextStyle(
                          color: Colors.teal
                      ),
                    )),

                    const Text('on',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14
                      ),
                    ),
                  ],
                ),
              ),

              const Text('all your devices.',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14
              ),)



            ],
          ),
        ),
      ),

    );
  }
}
