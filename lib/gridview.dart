import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView va Column misol'),
        ),
        body: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.blue,
                    height: 100.0,
                    width: 100.0,
                    child: Center(
                      child: Text('Item $index'),
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: Text(
                'Test',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.green,
                    height: 100.0,
                    width: 100.0,
                    child: Center(
                      child: Text('New Item $index'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
