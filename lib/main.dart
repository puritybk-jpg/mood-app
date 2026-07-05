import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mood App',
      home: MoodScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MoodScreen extends StatefulWidget {
  @override
  _MoodScreenState createState() => _MoodScreenState();
}

class _MoodScreenState extends State<MoodScreen> {
  String mood = "आज कैसा महसूस कर रहे हो?";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mood Selector')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(mood, style: TextStyle(fontSize: 22)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () { setState(() { mood = "😊 खुश"; }); },
              child: Text("खुश"),
            ),
            ElevatedButton(
              onPressed: () { setState(() { mood = "😢 उदास"; }); },
              child: Text("उदास"),
            ),
          ],
        ),
      ),
    );
  }
}
