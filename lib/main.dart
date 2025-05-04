import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 7, 49, 15),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "title", body: "body"),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({ required this.title,required this.body ,super.key});
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(title)),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/tree3.jpg"),
        
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text.rich(
                TextSpan(
                  style: TextStyle(fontSize: 16.0, height: 1.5),
                  children: [
                    //TextSpan(text: '\t\t'),
                    TextSpan(
                      text:
                          body,),
                    //TextSpan(text: '\t\t'),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Season(imageUrl: "assets/tree1.jpg", season: "Fall"),
                Season(imageUrl: "assets/tree3.jpg", season: "winter"),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.next_plan),
      ),
    );
  }
}

class Season extends StatelessWidget {
  final String imageUrl;
  final String season;

  const Season({required this.imageUrl, required this.season, super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Image.asset(height: 110, width: 100, fit: BoxFit.cover, imageUrl),
        Text(style: TextStyle(fontSize: 17), season),
      ],
    );
  }
}

