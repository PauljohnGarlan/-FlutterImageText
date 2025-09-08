import 'package:flutter/material.dart';

/*
The purpose of this syntax is to import the flutter material design library widgets, tools for building a material design Ui google design system


import - dart keyword to include external libraries

package:flutter - refers tp the material design packages

this os essential for building flutter apps w/ a standard UI
* */

void main() {
  runApp(const MyApp()); // flutter function that initialize the app and attaches root widget (My App()) to the screen

}

class MyApp extends StatelessWidget { // MyAapp Extends custpm class
  // stateless widgets - base class for widgets that do not hold nutable
  //
  const MyApp({super.key});

  @override //indicates the method overrides the statelessWidget
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext contex) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Title App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images.jpg',
                  width: 500,
                height: 250,
              ),
              const Text(
                'SOLO LEVELING',
                style: TextStyle(fontSize: 50)
              ),
              const Text(
                  'In a world where hunters, humans who possess magical abilities, must battle deadly monsters to protect the human race from certain annihilation, a notoriously weak hunternamed Sung Jinwoo finds himself in a seemingly endless struggle for survival.',
                  style: TextStyle(fontSize: 25)
              ),
            ],
          ),
        )
    );
  }
}
