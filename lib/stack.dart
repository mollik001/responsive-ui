import 'package:flutter/material.dart';

class StackViwe extends StatelessWidget {
  const StackViwe({key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              Positioned(
                top: constraints.maxHeight * 0.2, // 10% from the top
                left: constraints.maxWidth * 0.1, // 10% from the left
                child: Container(
                  width:
                      constraints.maxWidth * 0.8, // 80% of the available width
                  height: constraints.maxHeight *
                      0.8, // 80% of the available height
                  color: Colors.blue,
                ),
              ),
              Positioned(
                top: constraints.maxHeight * 0.3,
                left: constraints.maxWidth * 0.2,
                right: constraints.maxWidth * 0.2,
                child: Container(
                  width: constraints.maxWidth * 0.3,
                  height: constraints.maxHeight * 0.3,
                  color: Colors.red,
                ),
              ),
              Positioned(
                top: constraints.maxHeight * 0.4,
                left: constraints.maxWidth * 0.3,
                //right: constraints.maxWidth * 0.2,
                child: Container(
                  width: constraints.maxWidth * 0.02,
                  height: constraints.maxHeight * 0.05,
                  color: Color.fromARGB(255, 12, 214, 62),
                ),
              ),
              Positioned(
                top: constraints.maxHeight * 0.4,
                //left: constraints.maxWidth * 0.3,
                right: constraints.maxWidth * 0.3,
                child: Container(
                  width: constraints.maxWidth * 0.02,
                  height: constraints.maxHeight * 0.05,
                  color: Color.fromARGB(255, 12, 214, 62),
                ),
              ),
              Positioned(
                top: constraints.maxHeight * 0.52,
                left: constraints.maxWidth * 0.4,
                right: constraints.maxWidth * 0.4,
                child: Container(
                  width: constraints.maxWidth * 0.2,
                  height: constraints.maxHeight * 0.02,
                  color: Color.fromARGB(255, 233, 189, 189),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
