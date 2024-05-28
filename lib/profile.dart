import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Profile',
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        ),

      ),
      body: Column(

        children: [
          Container(
            height: 200,
            width: 500,
            color: Colors.white,
            child: Stack(
              children: [
                Center(
                  child: Container(
                    height: 170,
                    width: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/2.jpeg"),
                            fit: BoxFit.cover
                        )
                    ),
                    alignment: Alignment.bottomRight,
                    child: Container(
                      padding: const EdgeInsets.all( 2),
                      child: const CircleAvatar(radius: 25,
                        backgroundColor: Colors.teal,
                        child: Icon(Icons.camera_alt,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],

            ),


          ),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text('Name',
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey
            ),
            ),
            subtitle: Text('Malik',
            style: TextStyle(
              fontSize: 15
            ),
            ),
            trailing: Icon(Icons.edit,
            color: Colors.teal,
              size: 20,
            ),
          ),
          
          const Padding(
            padding: EdgeInsets.only(left: 65, right: 20),
            child: Text('This is not your username or pin. This name will be visible to your WhatApp contacts',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15
            ),
            ),
          ),
          const SizedBox(height: 5),
          const Divider(
            thickness: .2,
            color: Colors.grey,
            indent: 65,
          ),

          const ListTile(
            leading: Icon(Icons.help_outline_rounded),
            title: Text('About',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey
              ),
            ),
            subtitle: Text('Every thing is good',
              style: TextStyle(
                  fontSize: 15,
                color: Colors.black
              ),
            ),
            trailing: Icon(Icons.edit,
              color: Colors.teal,
              size: 20,
            ),
          ),
          const Divider(
            thickness: .2,
            color: Colors.grey,
            indent: 65,
          ),

          const ListTile(
            leading: Icon(Icons.call),
            title: Text('Phone',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey
              ),
            ),
            subtitle: Text('+92 301 7700352',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black
              ),
            ),
          ),


        ],
      ),
    );
  }
}
