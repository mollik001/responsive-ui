import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MySizes extends StatelessWidget {
  const MySizes({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaquery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  height: 100,
                  //width: 70,
                  color: const Color.fromARGB(255, 65, 55, 55),
                  alignment: Alignment.center,
                  child: const Expanded(
                    child: SingleChildScrollView(
                      child: Text(
                        "I need more space than you. so keep the distance please. I need more space than you. so keep the distance please.",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white24),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 100,
                  //width: 70,
                  color: Colors.red[300],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(_mediaquery.size.shortestSide.toString()),
          Text(_mediaquery.size.shortestSide.toString())
        ],
      ),
    );
  }
}
