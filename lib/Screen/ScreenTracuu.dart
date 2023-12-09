import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:untitled/Screen/Item.dart';
import 'package:untitled/Screen/Screenchitiet.dart';
import 'package:untitled/Screen/Screenmain.dart';

import '../EtaxData.dart';
import '../final.dart';

class ScreenTracuu extends StatefulWidget {
  const ScreenTracuu({Key? key}) : super(key: key);

  @override
  State<ScreenTracuu> createState() => _ScreenTracuuState();
}

class _ScreenTracuuState extends State<ScreenTracuu> {
  String yearText = '2023';
  List<String> years = ['2023','2022','2021','2020','2019','2018','2017','2016','2015','2014','2013','2012'];
  List<EtaxData> chosenList = [];
  double titleHeight = 0;
  double ListviewHeight = 0;
  double textHeight = 0;

  void chosenData(String year) {
    chosenList.clear();
    for(int i = 0 ; i < listdata.length ; i ++) {
      if (listdata.elementAt(i).year == year) {
        chosenList.add(listdata.elementAt(i));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return WillPopScope(
        child: Scaffold(
          body: Container(
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    width: screenWidth,
                    height: screenHeight,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/image/bg.jpeg')
                        )
                    ),
                  ),
                ),

                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    width: screenWidth,
                    height: screenHeight,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.6)
                    ),
                  ),
                ),

                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    width: screenWidth,
                    height: 110,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 213, 20, 21)
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                            bottom: 25,
                            left: 20,
                          child: GestureDetector(
                            child: Icon(
                              Icons.arrow_back_ios_new_outlined,
                              size: 25,
                              color: Colors.white,
                            ),
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (context) => Screenmain()),
                              );
                            },
                          ),
                        ),

                        Positioned(
                          bottom: 25,
                          right: 20,
                          child: Icon(
                            IconData(0xe813, fontFamily: 'icon1',matchTextDirection: true),
                            size: 25,
                            color: Colors.white,
                          ),
                        ),

                        Positioned(
                          bottom: 27,
                          left: 0,
                          child: Container(
                            height: 25,
                            width: screenWidth,
                            alignment: Alignment.center,
                            child: AutoSizeText(
                              'Tra cứu thông tin quyết toán',
                              style: TextStyle(
                                  fontFamily: 'icon1',
                                  fontSize: 100,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                Positioned(
                  top: 130,
                  left: 0,
                  child: Container(
                    width: screenWidth,
                    height: 200 + titleHeight + ListviewHeight + textHeight,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(28, 38, 59, 0.5)
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 20,
                          left: 15,
                          child: Container(
                            width: screenWidth - 30,
                            height: 33,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                color: Colors.grey,
                                width: 0.5
                              )
                            ),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 8,
                                  right: 8,
                                  child: Container(
                                    width: screenWidth/2,
                                    height: 17,
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      data.code,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'roboto',
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15
                                      ),
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 8,
                                  left: 7,
                                  child: Container(
                                    width: screenWidth/2,
                                    height: 17,
                                    alignment: Alignment.centerLeft,
                                    child: RichText(
                                      text: TextSpan(
                                        text: 'Mã số thuế ',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'roboto',
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '*',
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontFamily: 'roboto',
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Positioned(
                          top: 60,
                          left: 15,
                          child: GestureDetector(
                            child: Container(
                              width: screenWidth - 30,
                              height: 33,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.5
                                  )
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    top: 8,
                                    right: 35,
                                    child: Container(
                                      width: screenWidth/3,
                                      height: 17,
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        yearText,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'roboto',
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15
                                        ),
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    top: 5,
                                    right: 3,
                                    child: Container(
                                      width: screenWidth/3,
                                      height: 17,
                                      alignment: Alignment.centerRight,
                                      child: Icon(
                                        Icons.keyboard_arrow_down,
                                        size: 25,
                                        color: Color.fromARGB(255, 213, 20, 21),
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    top: 8,
                                    left: 7,
                                    child: Container(
                                      width: screenWidth/2,
                                      height: 17,
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Năm quyết toán',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: 'roboto',
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      height: screenHeight/2.5+40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(100),
                                            topLeft: Radius.circular(100)// Điều này bo tròn góc trên bên phải
                                        ),
                                        color: Colors.white
                                      ),
                                      child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                              width: screenWidth,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(255, 213, 20, 21)
                                              ),
                                              child: Stack(
                                                children: <Widget>[
                                                  Positioned(
                                                    top: 12,
                                                    left: 0,
                                                    right: 0,
                                                    bottom: 12,
                                                    child: Container(
                                                      alignment: Alignment.center,
                                                      child: AutoSizeText(
                                                        'Năm quyết toán',
                                                        style: TextStyle(
                                                            fontFamily: 'roboto',
                                                            fontSize: 100,
                                                            color: Colors.white,
                                                            fontWeight: FontWeight.normal
                                                        ),
                                                      ),
                                                    ),
                                                  ),

                                                  Positioned(
                                                    top: 12,
                                                    left: screenWidth/3,
                                                    right: 0,
                                                    bottom: 12,
                                                    child: GestureDetector(
                                                      child: Container(
                                                        alignment: Alignment.centerRight,
                                                        child: AutoSizeText(
                                                          'Đóng   ',
                                                          style: TextStyle(
                                                              fontFamily: 'roboto',
                                                              fontSize: 100,
                                                              color: Colors.white,
                                                              fontWeight: FontWeight.normal
                                                          ),
                                                        ),
                                                      ),
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ),
                                          ),

                                          Positioned(
                                            top: 40,
                                            left: 20,
                                            right: 0,
                                            bottom: 0,
                                            child: Container(
                                              child: ListView.builder(
                                                itemCount: years.length,
                                                itemBuilder: (BuildContext context, int index) {
                                                  return GestureDetector(
                                                    child: Container(
                                                      height: 45,
                                                      width: screenWidth - 20,
                                                      decoration: BoxDecoration(
                                                        border: Border(
                                                          bottom: BorderSide(
                                                            width: 0.5,
                                                            color: Colors.grey
                                                          )
                                                        )
                                                      ),
                                                      child: Stack(
                                                        children: <Widget>[
                                                          Positioned(
                                                            top: 13,
                                                            bottom: 13,
                                                            left: 0,
                                                            right: 40,
                                                            child: AutoSizeText(
                                                              years[index],
                                                              style: TextStyle(
                                                                fontFamily: 'roboto',
                                                                fontSize: 100,
                                                                color: yearText == years[index] ? Color.fromARGB(255, 157, 7, 6) : Colors.black
                                                              ),
                                                            ),
                                                          ),

                                                          Positioned(
                                                            top: 4,
                                                            right: 4,
                                                            child: Icon(
                                                              Icons.check_circle,
                                                              size: yearText == years[index] ? 32 : 0,
                                                              color:Color.fromARGB(255, 213, 20, 21),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    onTap: () {
                                                      setState(() {
                                                        yearText = years[index];
                                                        Navigator.pop(context);
                                                      });
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  }
                              );
                            },
                          ),
                        ),

                        Positioned(
                          top: 130,
                          left: 15,
                          child: GestureDetector(
                            child: Container(
                              width: screenWidth - 30,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  gradient: LinearGradient(
                                    colors: [Color.fromARGB(255, 151, 11, 10), Color.fromARGB(255, 114, 6, 4)], // Màu sắc gradient
                                  ),
                                  border: Border.all(
                                      width: 2,
                                      color: Color.fromARGB(255, 137, 14, 7)
                                  )
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'Tra cứu',
                                style: TextStyle(
                                    fontFamily: 'roboto',
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                chosenData(yearText);
                                if (chosenList.length == 0) {
                                  titleHeight = 0;
                                  ListviewHeight = 0;
                                  textHeight = 50;
                                } else {
                                  titleHeight = 50;
                                  ListviewHeight = 100 * chosenList.length.toDouble();
                                  textHeight = 0;
                                }
                              });
                            },
                          ),
                        ),

                        Positioned(
                          top: 200,
                          left: 15,
                          child: Container(
                            height: textHeight,
                            width: screenWidth-30,
                            alignment: Alignment.center,
                            child: Text(
                              'Không tìm thấy thông tin',
                              style: TextStyle(
                                fontFamily: 'roboto',
                                fontSize: screenWidth/30,
                                color: Colors.orange
                              ),
                            ),
                          ),
                        ),

                        Positioned(
                          top: 210,
                          left: 15,
                          child: Container(
                            width: screenWidth - 30,
                            height: titleHeight,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.9,
                                color: Colors.grey
                              )
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 1.8*(screenWidth-30)/5,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        width: 0.9,
                                        color: Colors.grey
                                      )
                                    )
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Mã tổ chức trả thu nhập',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'roboto',
                                      color: Colors.white,
                                      fontSize: screenWidth/30
                                    ),
                                  ),
                                ),

                                Container(
                                  width: 1.8*(screenWidth-30)/5,
                                  decoration: BoxDecoration(
                                      border: Border(
                                          right: BorderSide(
                                              width: 0.9,
                                              color: Colors.grey
                                          )
                                      )
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Tên tổ chức trả thu nhập',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontFamily: 'roboto',
                                        color: Colors.white,
                                        fontSize: screenWidth/30
                                    ),
                                  ),
                                ),

                                Container(
                                  width: (1.35*(screenWidth-30)/5),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Chi tiết',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontFamily: 'roboto',
                                        color: Colors.white,
                                        fontSize: screenWidth/30
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Positioned(
                          top: 260,
                          left: 15,
                          child: Container(
                            width: screenWidth-30,
                            height: ListviewHeight,
                            child: ListView.builder(
                              itemCount: chosenList.length,
                              padding: EdgeInsets.zero,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  child: Item(width: screenWidth, etaxData: chosenList.elementAt(index)),
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(builder: (context) => Screenchitiet(etaxData: chosenList.elementAt(index))),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        onWillPop: () async {
          return false;
        }
    );
  }
}
