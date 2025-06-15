import 'package:flutter/material.dart';

class ForGotPass extends StatelessWidget {
  const ForGotPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      child: SizedBox(
        width: 150,
        height: 150,
        child: Column(
          children: [
            Icon(Icons.dangerous_outlined, color: Colors.red, size: 100),
            Text('You are dead', style: TextStyle(fontSize: 30)),
          ],
        ),
      ),
    );
  }
}