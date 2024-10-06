import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:learning_app/screenfive.dart';

class screenfour extends StatefulWidget {
  const screenfour({super.key});

  @override
  State<screenfour> createState() => _screenfourState();
}

class _screenfourState extends State<screenfour> {
  bool ischeckedtwo = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.purple,
        leading: IconButton(
          onPressed: () {
            setState(() {
              Navigator.pop(context);
            });
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              children: [
                Text(
                  'Learning app',
                  style: TextStyle(color: Colors.purple),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 15),
                  child: Image.asset('images/learning.png'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Select your course level',
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Beginner',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.purple),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Intermediate',
                  style: TextStyle(color: Colors.purple),
                  textAlign: TextAlign.center,
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.purple),
                    )),
              ),
              SizedBox(
                width: 15,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Expert',
                  style: TextStyle(color: Colors.purple),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.purple))),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Checkbox(
                  value: ischeckedtwo,
                  activeColor: Colors.purple,
                  checkColor: Colors.white,
                  onChanged: (bool? newvalue) {
                    setState(() {
                      ischeckedtwo = newvalue!;
                    });
                  }),
              Text(
                'Are you sure',
                style: TextStyle(color: Colors.purple),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => screenFive()));
              },
              child: Text('Continue'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  minimumSize: Size(200, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
          )
        ],
      ),
    );
  }
}
