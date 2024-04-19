import 'package:flutter/material.dart';

class AspectExample extends StatefulWidget {
  const AspectExample({super.key});

  @override
  State<AspectExample> createState() => _AspectExampleState();
}

class _AspectExampleState extends State<AspectExample> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Container(
          width: 620,
          alignment: Alignment.center,
          height: 40,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 90, 31, 8),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: AspectRatio(
            aspectRatio: 10 / 3,
            child: Container(
              decoration: BoxDecoration(
                  //color: Colors.blueGrey,
                  ),
              alignment: Alignment.center,
              child: const Text(
                'Sign Up ',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
