import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, String>> data = [
    {'nama': 'Fachturozi', 'hobi': 'Bermain Game'}
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Daftar Nama dan Hobi'),
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(data[index]['nama']!),
                subtitle: Text(data[index]['hobi']!),
                leading: CircleAvatar(
                  child: Text(data[index]['nama']![0]),
                ),
                trailing: const Icon(Icons.more_vert),
              ),
            );
          },
        ),
      ),
    );
  }
}
