import 'package:flutter/material.dart';
import 'package:whatsapp/main%20screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const MainScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset('assets/images/whatapp.png',
              scale: 4,
            ),
            const Spacer(),
            const Text('from',
            style: TextStyle(
              color: Colors.grey
            )
              ,),
            const Text('Meta',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),
            ),
            const SizedBox(height: 50),



          ],
        ),
      ),
    );
  }
}
