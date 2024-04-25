import 'package:flutter/material.dart';
import 'package:responsive_ui/mediaQuery/my_Box.dart';

class FirstMediaQuery extends StatelessWidget {
  const FirstMediaQuery({super.key});

  @override
  Widget build(BuildContext context) {
    // var mediaQuery = MediaQuery.of(context);
    return const Scaffold(
      body: Center(
        child: MyBox(
          child: Expanded(
            child: Text(
              'My Box is protecting me.',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}



//By using the screen width obtained from MediaQuery, the font size of the text widget will dynamically adjust based on the user's device size.
// LayoutBuilder(
//       builder: (BuildContext context, BoxConstraints constraints) {
//         // Get the screen width from MediaQuery
//         double screenWidth = MediaQuery.of(context).size.width;

//         // Define the base font size
//         double baseFontSize = 20.0;

//         // Calculate the scaled font size based on the screen width
//         double scaledFontSize = baseFontSize * screenWidth / 375; // 375 is the reference screen width

//         return Text(
//           'Hello, World!',
//           style: TextStyle(fontSize: scaledFontSize),
//         );
//       },
//     );