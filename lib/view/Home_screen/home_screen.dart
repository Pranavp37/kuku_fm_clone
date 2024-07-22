import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CircleAvatar(
          radius: 20,
          backgroundColor: Colors.orange,
          child: Text(
            'P',
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          SizedBox(width: 150, child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Search on KuKu FM',
              
            ),
          )),
        ],
      ),
      body: Container(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
