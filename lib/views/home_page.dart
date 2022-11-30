import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image:  AssetImage("images/background.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Welcome..',style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.w500),),
                Text('Make the sun work for you!',style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal),),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xfff6f6f6),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))
              ),

              height:600,
              width: double.maxFinite,
            ),
          )
        ],
      )
    );
  }
}
