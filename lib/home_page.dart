import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  double width;
  // @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 490),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
        // child: Padding(
        //   padding: const EdgeInsets.only(bottom: 470),
        child: Container(
          height: 0,
          width: width,
          decoration: BoxDecoration(color: Colors.indigo.shade400),
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
          ),
        ),
        // ),
      ),
    );
  }
}
