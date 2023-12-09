import 'package:flutter/material.dart';
import 'package:untitled/EtaxData.dart';

class Item extends StatefulWidget {
  final double width;
  final EtaxData etaxData;
  const Item({Key? key, required this.width, required this.etaxData}) : super(key: key);

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width-30,
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.9,
          color: Colors.grey
        )
      ),
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 1.8*(widget.width-30)/5-0.9,
            alignment: Alignment.centerLeft,
            child: Text(
              '  ' + widget.etaxData.matochuc,
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontFamily: 'roboto',
                  color: Color.fromARGB(255, 245, 233, 85),
                  fontSize: widget.width/30
              ),
            ),
          ),

          Container(
            width: 1.8*(widget.width-30)/5+0.9,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  width: 0.9,
                  color: Colors.grey
                ),
                right: BorderSide(
                    width: 0.9,
                    color: Colors.grey
                ),
              )
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 5,right: 5, top: 4, bottom: 4),
              child: Text(
                widget.etaxData.tentochuc,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: 'roboto',
                    color: Color.fromARGB(255, 245, 233, 85),
                    fontSize: widget.width/30
                ),
              ),
            ),

          ),

          Container(
              width: 1.35*(widget.width-30)/5,
              alignment: Alignment.centerLeft,
              child: Center(
                child: Icon(
                  Icons.remove_red_eye_outlined,
                  size: 25,
                  color: Color.fromARGB(255, 213, 20, 21),
                ),
              )

          ),
        ],
      ),
    );
  }
}
