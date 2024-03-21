import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 52, 133, 255),
        title: Text('Goyek'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Your favorites', style: Theme.of(context).textTheme.headline6),
                TextButton(
                  onPressed: () {print('Edit button pressed');},
                  style: ButtonStyle(side: MaterialStateProperty.all<BorderSide>(
      BorderSide(color: Colors.blue, width: 2.0)),
                  ),
                  child: Text('Edit', style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Expanded(
              child: GridView.count(
                padding: EdgeInsets.all(20),
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: <Widget>[
                  _buildGridItem(context, 'GoRide', 'images/icon.png'),
                  _buildGridItem(context, 'GoCar', 'images/icon.png'),
                  _buildGridItem(context, 'GoFood', 'images/icon.png'),
                  _buildGridItem(context, 'GoSend', 'images/icon.png'),
                  _buildGridItem(context, 'GoMart', 'images/icon.png'),
                  _buildGridItem(context, 'GoPulsa', 'images/icon.png'),
                  _buildGridItem(context, 'Check In', 'images/icon.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(BuildContext context, String title, String imagePath) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Image.asset(imagePath, fit: BoxFit.cover), // Ganti dengan gambar yang diinginkan
        ),
        SizedBox(height: 5),
        Text(title),
      ],
    );
  }
}