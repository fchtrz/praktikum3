import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2, // Two tabs
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightBlueAccent,
            foregroundColor: Colors.white,
            title: const Text('Instagram'),
            bottom: const TabBar(
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: "For You"),
                Tab(text: "Following"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: 10, // Loop 10 times
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: FlutterLogo(),
                    title: Text(
                      "Data Ke ${index + 1}", // Display item number
                    ),
                  );
                },
              ),
              Center(
                child: GridView.count(
                  crossAxisCount: 2, // Two images per row
                  padding: const EdgeInsets.all(20.0),
                  mainAxisSpacing: 8.0, // Spacing between rows
                  crossAxisSpacing: 8.0, // Spacing between images
                  children: List.generate(
                    4, // Replace with the number of images you have
                    (index) => Image.asset(
                      'images/icon.png', // Replace with your image paths
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}