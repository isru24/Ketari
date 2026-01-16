import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        title: Text('Home'),
        automaticallyImplyLeading: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.vertical(
            bottom: Radius.elliptical(90, 40),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(75),
          child: Transform.translate(
            offset: Offset(0, 30),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Material(
                  elevation: 8,
                  borderRadius: BorderRadius.circular(16),
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.white),
                      hintText: 'Search Jobs',
                      prefixIcon: Icon(Icons.search, color: Colors.white),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 55, 55, 55),
                      contentPadding: EdgeInsets.symmetric(vertical: 14),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            SingleChildScrollView(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.filter_list,
                        color: Colors.lightGreenAccent,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'On-site',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Senior',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Full-Time',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 1),
              child: Card(
                color: Colors.transparent,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('data', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 48, 47, 47),
    );
  }
}
