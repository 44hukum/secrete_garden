import 'package:flutter/material.dart';

class Volunteering extends StatelessWidget {
  const Volunteering({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Volunteering"),
      ),
       body: Center(
         child: ElevatedButton(
           onPressed: () {
             // Navigate back to first screen when tapped.
           },
           child: const Text('Go back!'),
         ),
       ),
    );
  }
}
