import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GUESS THE NUMBER',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GUESS THE NUMBER')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
            decoration: BoxDecoration(color: Colors.purpleAccent),
            child:Center(
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/mob5.png',width:150,height:150,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('GUESS',style:TextStyle(fontSize: 40,color: Colors.lightGreen),),
                            Text('THE NUMBER',style:TextStyle(fontSize: 20,color: Colors.lightGreen),),
                          ],)
                      ],
                    ),
                    SizedBox(height: 40,),
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: TextField(),
                    ),
                    ElevatedButton(onPressed: (){},child: Text('GUESS'),),
                  ],
                )
            )
        ),
      ),
    );
  }
}