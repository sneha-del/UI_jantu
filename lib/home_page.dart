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
          width: width,
          decoration: BoxDecoration(color: Colors.indigo.shade400),
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: [
              Positioned(
                  top: 30,
                  right: -100,
                  child: _circles(300, Colors.white.withOpacity(0.08))),
              Positioned(
                  top: -100,
                  left: -45,
                  child: _circles(width * .4, Colors.deepPurple)),
              Positioned(
                  top: -180,
                  right: -30,
                  child: _circles(width * .7, Colors.transparent,
                      borderColor: Colors.white38)),
              Positioned(
                top: 35,
                left: 0,
                child: Container(
                  width: width,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Search courses",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 30,
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Type Domething..",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.white54,
                            fontSize: 30,
                            fontWeight: FontWeight.w500),
                      )
                    ],

                    //

                    //
                  ),
                ),
              ),
            ],
          ),
        ),
        // ),
      ),
    );
  }

  Widget _circles(double height, Color color,
      {Color borderColor = Colors.transparent, double borderWidth = 1}) {
    return Container(
      height: height,
      width: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(color: borderColor, width: borderWidth),
      ),
    );
  }
}
