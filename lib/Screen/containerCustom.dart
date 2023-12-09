import 'package:flutter/material.dart';

class ContainerCustom extends StatelessWidget {
  final String title;
  final String content;
  final double width;
  final double screenWidth;
  const ContainerCustom({Key? key, required this.title, required this.content, required this.width, required this.screenWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: title == 'Mã tổ chức thu nhập' ? 0.9 : 0,color: Colors.grey),
          left: BorderSide(width: 0.9, color: Colors.grey),
          right: BorderSide(width: 0.9, color: Colors.grey),
          bottom: BorderSide(width: 0.9, color: Colors.grey),
        )
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: width,
            child: Row(
              children: [
                Container(
                  width: (title == 'Tổng số tiền giảm trừ gia cảnh' || title == 'Từ thiện,nhân đạo,khuyến học' || title == 'Quỹ hưu trí tự nguyện được trừ') ? width/2 + 0.9 : width/2,
                  decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                            width: (title == 'Tổng số tiền giảm trừ gia cảnh' || title == 'Từ thiện,nhân đạo,khuyến học' || title == 'Quỹ hưu trí tự nguyện được trừ') ? 0.9 : 0,
                            color: Colors.grey
                        ),
                      )
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, top: 8, bottom: 8, right: 10),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: screenWidth/30,
                        fontFamily: 'roboto',
                        color: Colors.white
                      ),
                    ),
                  ),
                ),

                Container(
                  width: width/2.1,
                  decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(
                            width: (title == 'Tổng số tiền giảm trừ gia cảnh' || title == 'Từ thiện,nhân đạo,khuyến học' || title == 'Quỹ hưu trí tự nguyện được trừ') ? 0 : 0.9,
                            color: Colors.grey
                        ),
                      )
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, top: 15, bottom: 15, right: 10),
                    child: Text(
                      content,
                      style: TextStyle(
                          fontSize: screenWidth/30,
                          fontFamily: 'roboto',
                          color: Colors.yellowAccent
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),


        ],
      ),
    );
  }
}
