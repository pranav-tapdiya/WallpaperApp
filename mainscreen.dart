import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          title: Center(child: Text('Wallpapers',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w500,fontFamily: 'Oswald'))),
        ),
        body: ListView(
            children: ListTile.divideTiles(
             context: context,
              tiles: [
                Center(child: Text('Legion',style: TextStyle(fontSize: 20,fontFamily: 'Oswald',fontWeight: FontWeight.w300,color: Colors.black),)),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Container(height: 200,color: Colors.grey,child: Image.asset('assets/images/legion.png',fit: BoxFit.cover,)),
                ),
                Center(child: Text('Elderflame',style: TextStyle(fontSize: 20,fontFamily: 'Oswald',fontWeight: FontWeight.w300,color: Colors.black),)),
                Padding(
                  padding: const EdgeInsets.only(bottom:8.0),
                  child: Container(height: 200,color: Colors.grey,child: Image.asset('assets/images/Elderflame_Dragon.jpg',fit: BoxFit.cover,)),
                ),
                Center(child: Text('Reaver',style: TextStyle(fontSize: 20,fontFamily: 'Oswald',fontWeight: FontWeight.w300,color: Colors.black),)),
                Padding(
                  padding: const EdgeInsets.only(bottom:8.0),
                  child: Container(height: 200,color: Colors.grey,child: Image.asset('assets/images/ValorantWallpaper_Reaver.jpg',fit: BoxFit.cover,)),
                ),
                Center(child: Text('Singularity',style: TextStyle(fontSize: 20,fontFamily: 'Oswald',fontWeight: FontWeight.w300,color: Colors.black),)),
                Padding(
                  padding: const EdgeInsets.only(bottom:8.0),
                  child: Container(height: 200,color: Colors.grey,child: Image.asset('assets/images/ValorantWallpaper_Singularity.jpg',fit: BoxFit.cover,)),
                ),
              ]
            ).toList(),
          ),
        );
  }
}
