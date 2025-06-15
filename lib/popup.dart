import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopUp extends StatefulWidget {
  const PopUp({super.key});

  @override
  State<PopUp> createState() => _PopUpState();
}


class _PopUpState extends State<PopUp> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: 150,
          height: 150,
          child: Column(
            children: [
              Icon(Icons.check_circle, color: Colors.green, size: 100),
              Text('You Loged In Successfuly'),
            ],
          ),
        ),
      ),
    );
  }
}