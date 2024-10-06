import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learning_app/login.dart';

void main() {
  runApp(
    MaterialApp(
      home: learningapp(),
    ),
  );
}

class learningapp extends StatefulWidget {
  const learningapp({super.key});

  @override
  State<learningapp> createState() => _learningappState();
}

class _learningappState extends State<learningapp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 10),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => secondscreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Text(
          'Learning App',
          style: TextStyle(
            color: Color(0xfff1f5f8),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class secondscreen extends StatefulWidget {
  const secondscreen({super.key});

  @override
  State<secondscreen> createState() => _secondscreenState();
}

class _secondscreenState extends State<secondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              setState(() {
                Navigator.pop((context));
              });
            },
            icon: Icon(Icons.arrow_back)),
        iconTheme: IconThemeData(
          color: Color.fromARGB(255, 108, 20, 209),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset('images/e-learning pic.webp')),
          Text(
            'Online learning platform',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 108, 20, 209),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'This app will help you learn more about new courses and skills so please join us and start learning more',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 13,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => login()));
              });
            },
            child: Text('Start Learning'),
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(Size(360, 50)),
              backgroundColor: MaterialStatePropertyAll(
                Colors.purple[600],
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
