import 'package:flutter/material.dart';
class Snekars extends StatefulWidget {
  const Snekars({super.key});

  @override
  State<Snekars> createState() => _SnekarsState();
}

class _SnekarsState extends State<Snekars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('data'),
      ),
    );
  }
}
