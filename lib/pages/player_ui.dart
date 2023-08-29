import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:iconsax/iconsax.dart';
import '../utils/player_buttons.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'asd'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final bool pause = false;
  late final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Introduction'),
        backgroundColor: Color(0xFF292D32),
      ),
      body: SafeArea(
        bottom: false,
        child: Container(
          padding: EdgeInsets.only(top: 30),
          color: Color(0xFF292D32),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Container(
                width: 350,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://images.pexels.com/photos/17305999/pexels-photo-17305999.jpeg'),
                    fit: BoxFit.cover
          ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.6),
                      offset: Offset(-6.0, -6.0),
                      blurRadius: 16.0,
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.6),
                      offset: Offset(6.0, 6.0),
                      blurRadius: 16.0,
                    ),
                  ],
                  color: Color(0xFF292D32),
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              SizedBox(height: 40),
              Slider(
                  value: 1.0, onChanged: (va){
                print(va);
              }),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  PlayButton(width: 70, height: 70, size: 35, icon: Iconsax.backward, btnValue: 'back',btnpause: false),
                  // Container(
                  //     width: 150,
                  //     height: 150,
                  //     decoration: BoxDecoration(
                  //       boxShadow: [
                  //         BoxShadow(
                  //           color: Colors.white.withOpacity(0.1),
                  //           offset: Offset(-6.0, -6.0),
                  //           blurRadius: 16.0,
                  //         ),
                  //         BoxShadow(
                  //           color: Colors.black.withOpacity(0.4),
                  //           offset: Offset(6.0, 6.0),
                  //           blurRadius: 16.0,
                  //         ),
                  //       ],
                  //       color: Color(0xFF292D32),
                  //       borderRadius: BorderRadius.circular(100),
                  //     ),
                  //     child: Icon(
                  //       Iconsax.pause,
                  //       color: Colors.blue,
                  //       size: 45,)
                  // ),
                  PlayButton(width: 150, height: 150, size: 50, icon: Iconsax.pause, btnValue: 'pause', btnpause: true),
                  PlayButton(width: 70, height: 70, size: 35, icon: Iconsax.forward, btnValue: 'forward', btnpause: false,),
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}
