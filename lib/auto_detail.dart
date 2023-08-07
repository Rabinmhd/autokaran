import 'package:flutter/material.dart';

class AutoDetail extends StatelessWidget {
  const AutoDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Auto details"),
      ),
      body: Column(
        children: [
          Image.network(
              "https://img.freepik.com/premium-vector/three-wheeler-yellow-auto-rickshaw_679005-7.jpg"),
          const Text(
            "Rakshakan",
            style: TextStyle(fontSize: 30),
          ),
          const Text("KL 57 M 2012"),
          const Text("Ashraf"),
          const Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.call,size: 50),
              Text("8129570444"),
              Text("Hi"),
              const Text("KL 57 M 2012"),
            ],
          ),
        ],
      ),
    );
  }
}
