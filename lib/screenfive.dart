import 'package:flutter/material.dart';

class screenFive extends StatefulWidget {
  const screenFive({super.key});

  @override
  State<screenFive> createState() => _ScreenFiveState();
}

class _ScreenFiveState extends State<screenFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.purple,
        title: Text(
          'Home',
          style: TextStyle(color: Colors.purple),
        ),
        centerTitle: true,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: Text(
              'Welcome back',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Zakarie Osman',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Book Class'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    minimumSize: Size(100, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                SizedBox(width: 14),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('My Courses'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    minimumSize: Size(100, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 55, left: 15),
            child: Text(
              'Last Classes',
              style: TextStyle(color: Colors.purple, fontSize: 26),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 220,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CourseCard(
                  imagePath: 'images/course1.jpg',
                  category: 'Arts & Humanities',
                  title: 'Draw and Paint Arts',
                  duration: '2h 25min',
                ),
                CourseCard(
                  imagePath: 'images/course1.jpg',
                  category: 'Computer & Tech',
                  title: 'Programming',
                  duration: '9h 2min',
                ),
                CourseCard(
                  imagePath: 'images/course1.jpg',
                  category: 'Business',
                  title: 'Business Management',
                  duration: '5h 30min',
                ),
                CourseCard(
                  imagePath: 'images/course1.jpg',
                  category: 'Business',
                  title: 'Business Management',
                  duration: '5h 30min',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final String imagePath;
  final String category;
  final String title;
  final String duration;

  CourseCard({
    required this.imagePath,
    required this.category,
    required this.title,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                category,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                duration,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
