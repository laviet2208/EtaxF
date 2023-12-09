import 'package:flutter/material.dart';

class ContainerCustom1 extends StatefulWidget {
  final String title;
  final String content;
  final double screenWidth;
  const ContainerCustom1({Key? key, required this.title, required this.content, required this.screenWidth}) : super(key: key);

  @override
  State<ContainerCustom1> createState() => _ContainerCustom1State();
}

class _ContainerCustom1State extends State<ContainerCustom1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.screenWidth-20,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: widget.screenWidth-20,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8,bottom: 8),
                  child:Container(
                    width: (widget.screenWidth-20)/3,
                    child: Text(
                      widget.title,
                      style: TextStyle(
                          fontSize: widget.screenWidth/28,
                          fontFamily: 'roboto',
                          color: Colors.white
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 13,bottom: 13),
                  child:Container(
                    width: 2*(widget.screenWidth-20)/3 - 10,
                    child: Text(
                      widget.content,
                      style: TextStyle(
                          fontSize: widget.screenWidth/28,
                          fontFamily: 'roboto',
                          color: Colors.yellowAccent
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Container(
              height: 0.5,
              decoration: BoxDecoration(
                  color: Colors.grey
              ),
            ),
          )
        ],
      ),
    );
  }
}
