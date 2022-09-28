import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CyberPunk',
      theme: ThemeData(
        fontFamily: 'Cyber',
        primarySwatch: Colors.yellow,
      ),
      home: DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.notifications),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.extension),
                  onPressed: () {},
                )
              ],
            ),
            SizedBox(height: 20),
            Text.rich(
              TextSpan(
                text: 'CYBERPUNK ',
                style: TextStyle(
                  color: Colors.yellowAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: TextStyle(
                fontSize: 35,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  size: 18,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'search',
              ),
            ),
            SizedBox(height: 40),
            Text(
              'Picture',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 450,
              child: GridView.count(
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                crossAxisCount: 2,
                children: [
                  Image.asset(
                    'images/endrunner.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'images/enrunner2.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'images/rebecaca.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'images/one.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'images/two.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'images/three.jpg',
                    fit: BoxFit.cover,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
