import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:untitled/Screen/ScreenTracuu.dart';
import 'package:untitled/Screen/Screenthongtin.dart';

import '../final.dart';

class Screenmain extends StatefulWidget {
  const Screenmain({Key? key}) : super(key: key);

  @override
  State<Screenmain> createState() => _ScreenmainState();
}

class _ScreenmainState extends State<Screenmain> {
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
                        fit: BoxFit.fitHeight,
                        image: AssetImage('assets/image/bg.png')
                      )
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
                              child: Container(
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage('assets/image/userwhite.png')
                                    )
                                ),
                              ),
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (context) => Screenthongtin()),
                              );
                            },
                          ),
                        ),

                        Positioned(
                            bottom: 25,
                            right: 20,
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/image/turnoff.png')
                                  )
                              ),
                            )
                        ),

                        Positioned(
                          bottom: 27,
                          left: 0,
                          child: Container(
                            height: 25,
                            width: screenWidth,
                            alignment: Alignment.center,
                            child: AutoSizeText(
                              'eTax Mobile',
                              style: TextStyle(
                                fontFamily: 'icon1',
                                fontSize: 100,
                                color: Colors.white,
                                fontWeight: FontWeight.normal
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    width: screenWidth,
                    height: 100,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Container(
                            width: screenWidth,
                            height: 80,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 33, 33, 33)
                            ),
                          ),
                        ),

                        Positioned(
                          top: 0,
                          left: (screenWidth - 65)/2,
                          child: Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(1000)
                            ),
                            child: Center(
                              child: Image.asset('assets/image/logo.gif'),
                            ),
                          ),
                        ),

                        Positioned(
                          top: 45,
                          left: 20,
                          child: Icon(
                            IconData(0xe813, fontFamily: 'icon1',matchTextDirection: true),
                            size: 25,
                            color: Color.fromARGB(255, 213, 20, 21),
                          ),
                        ),

                        Positioned(
                          top: 45,
                          right: 20,
                          child: Icon(
                            Icons.settings,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),

                        Positioned(
                          top: 45,
                          left: 20 + 25 + (screenWidth-25*5)/6,
                          child: Icon(
                            Icons.search,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),

                        Positioned(
                          top: 45,
                          right: 20 + 25 + (screenWidth-25*5)/6,
                          child: Icon(
                            Icons.notifications,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  top: 110,
                  bottom: 100,
                  child: Container(
                    width: screenWidth,
                    child: ListView(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      children: [
                        Container(height: 20,),

                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Container(
                            height: 70,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(1000),
                                      border: Border.all(
                                        width: 0.5,
                                        color: Color.fromARGB(255, 213, 20, 21),
                                      ),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage('assets/image/avatar.png')
                                      )
                                    ),
                                  ),
                                ),

                                Positioned(
                                  left: 80,
                                  top: 15,
                                  child: Container(
                                    width: screenWidth - 30 - 80,
                                    height: 20,
                                    child: AutoSizeText(
                                      data.code,
                                      style: TextStyle(
                                        fontFamily: 'roboto',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 100,
                                        color: Colors.white
                                      ),
                                    ),
                                  ),
                                ),

                                Positioned(
                                  left: 80,
                                  bottom: 15,
                                  child: Container(
                                    width: screenWidth - 30 - 80,
                                    height: 16,
                                    child: AutoSizeText(
                                      data.name,
                                      style: TextStyle(
                                          fontFamily: 'roboto',
                                          fontWeight: FontWeight.normal,
                                          fontSize: 100,
                                          color: Color.fromARGB(255, 102, 112, 122)
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(height: 15,),

                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Container(
                            height: 115,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 56, 66, 75),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 10,
                                  left: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: LinearGradient(
                                        colors: [Color.fromARGB(255, 212, 14, 15), Color.fromARGB(255, 157, 7, 6)], // Màu sắc gradient
                                      ),
                                    ),
                                    child: Icon(
                                      IconData(0xe82a, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  left: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                    width: 60,
                                    alignment: Alignment.center,
                                    child: AutoSizeText(
                                      'Nộp thuế',
                                      style: TextStyle(
                                        fontFamily: 'roboto',
                                        color: Colors.white,
                                        fontSize: 8
                                      ),
                                    )
                                  ),
                                ),

                                Positioned(
                                  top: 10,
                                  right: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: LinearGradient(
                                        colors: [Color.fromARGB(255, 212, 14, 15), Color.fromARGB(255, 157, 7, 6)], // Màu sắc gradient
                                      ),
                                    ),
                                    child: Icon(
                                      IconData(0xe818, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  right: (screenWidth - 30 - 180)/5.5 - 15,
                                  child: Container(
                                      width: 90,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Cài đặt chức năng nổi bật',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),

                                Positioned(
                                  top: 10,
                                  right: (screenWidth - 90)/2,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: LinearGradient(
                                        colors: [Color.fromARGB(255, 212, 14, 15), Color.fromARGB(255, 157, 7, 6)], // Màu sắc gradient
                                      ),
                                    ),
                                    child: Icon(
                                      IconData(0xe82c, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  right: (screenWidth - 30 - 90)/2,
                                  child: Container(
                                      width: 90,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Hồ sơ đất đai',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          height: 25,
                        ),

                        Container(
                          height: 25,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                  width: 90,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 32, 51, 68),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(100),
                                      bottomRight: Radius.circular(100)// Điều này bo tròn góc trên bên phải
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'NỘP THUẾ',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'roboto',
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        Container(
                          height: 20,
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Container(
                            height: 110,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 10,
                                  left: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79)
                                    ),
                                    child: Icon(
                                      IconData(0xe82a, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  left: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                      width: 60,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Nộp thuế',
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),

                                Positioned(
                                  top: 10,
                                  right: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe838, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  right: (screenWidth - 30 - 180)/5.5 - 15,
                                  child: Container(
                                      width: 90,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Tra cứu chứng từ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),

                                Positioned(
                                  top: 10,
                                  right: (screenWidth - 90)/2,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe82a, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  right: (screenWidth - 30 - 90)/2,
                                  child: Container(
                                      width: 90,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Nộp thuế thay',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          height: 20,
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Container(
                            height: 110,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 10,
                                  left: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe838, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  left: (screenWidth - 30 - 180)/5.5 - 20,
                                  child: Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Liên kết tài khoản',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),

                                Positioned(
                                  top: 10,
                                  right: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe838, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  right: (screenWidth - 30 - 180)/5.5 - 15,
                                  child: Container(
                                      width: 90,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Đề nghị xử lý tài khoản nộp thừa',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),

                                Positioned(
                                  top: 10,
                                  right: (screenWidth - 90)/2,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe838, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  right: (screenWidth - 30 - 90)/2,
                                  child: Container(
                                      width: 90,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Hủy liên kết tài khoản',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          height: 20,
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Container(
                            height: 110,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 10,
                                  left: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe838, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  left: (screenWidth - 30 - 180)/5.5 - 20,
                                  child: Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Tra cứu đề nghị xử lý khoản nộp thừa',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          height: 25,
                        ),

                        Container(
                          height: 25,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                  width: 130,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 32, 51, 68),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(100),
                                        bottomRight: Radius.circular(100)// Điều này bo tròn góc trên bên phải
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'ĐĂNG KÝ THUẾ',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'roboto',
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        Container(
                          height: 25,
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Container(
                            height: 110,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 10,
                                  left: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe838, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  left: (screenWidth - 30 - 180)/5.5 - 20,
                                  child: Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Thay đổi thông tin',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),

                                Positioned(
                                  top: 10,
                                  right: (screenWidth - 90)/2,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe82b, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  right: (screenWidth - 30 - 90)/2,
                                  child: Container(
                                      width: 90,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Hồ sơ đăng ký thuế',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          height: 25,
                        ),

                        Container(
                          height: 25,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                  width: 170,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 32, 51, 68),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(100),
                                        bottomRight: Radius.circular(100)// Điều này bo tròn góc trên bên phải
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'TRA CỨU NGHĨA VỤ THUẾ',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'roboto',
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        Container(
                          height: 15,
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Container(
                            height: 110,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 10,
                                  left: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe827, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  left: (screenWidth - 30 - 180)/5.5 - 20,
                                  child: Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Tất cả nghĩa vụ thuế',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),

                                Positioned(
                                  top: 10,
                                  right: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe825, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  right: (screenWidth - 30 - 180)/5.5 - 15,
                                  child: Container(
                                      width: 90,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'LPTB phương tiện',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),

                                Positioned(
                                  top: 10,
                                  right: (screenWidth - 90)/2,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe826, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  right: (screenWidth - 30 - 90)/2,
                                  child: Container(
                                      width: 90,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Nghĩa vụ tài chính về đất đai',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          height: 25,
                        ),

                        Container(
                          height: 25,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                  width: 150,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 32, 51, 68),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(100),
                                        bottomRight: Radius.circular(100)// Điều này bo tròn góc trên bên phải
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'TRA CỨU THÔNG BÁO',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'roboto',
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        Container(
                          height: 25,
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Container(
                            height: 110,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 10,
                                  left: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe821, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  left: (screenWidth - 30 - 180)/5.5 - 20,
                                  child: Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Thông báo xử lý hồ sơ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),

                                Positioned(
                                  top: 10,
                                  right: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe823, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  right: (screenWidth - 30 - 180)/5.5 - 15,
                                  child: Container(
                                      width: 90,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Thông báo của Cơ quan thuế',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),

                                Positioned(
                                  top: 10,
                                  right: (screenWidth - 90)/2,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe819, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  right: (screenWidth - 30 - 90)/2,
                                  child: Container(
                                      width: 90,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Thông báo LPTB ô tô,xe máy',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          height: 25,
                        ),

                        Container(
                          height: 25,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                  width: 120,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 32, 51, 68),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(100),
                                        bottomRight: Radius.circular(100)// Điều này bo tròn góc trên bên phải
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'TRA CỨU HỒ SƠ',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'roboto',
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        Container(
                          height: 25,
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Container(
                            height: 110,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 10,
                                  left: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe831, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  left: (screenWidth - 30 - 180)/5.5 - 20,
                                  child: Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Hồ sơ khai thuế',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),

                                Positioned(
                                  top: 10,
                                  right: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe83a, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  right: (screenWidth - 30 - 180)/5.5 - 15,
                                  child: Container(
                                      width: 90,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'LPTB ô tô,xe máy',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),

                                Positioned(
                                  top: 10,
                                  right: (screenWidth - 90)/2,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe830, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  right: (screenWidth - 30 - 90)/2,
                                  child: Container(
                                      width: 90,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Hồ sơ quyết toán thuế',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          height: 25,
                        ),

                        Container(
                          height: 25,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                  width: 90,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 32, 51, 68),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(100),
                                        bottomRight: Radius.circular(100)// Điều này bo tròn góc trên bên phải
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'TIỆN ÍCH',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'roboto',
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        Container(
                          height: 25,
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Container(
                            height: 110,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 10,
                                  left: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe839, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  left: (screenWidth - 30 - 180)/5.5 - 20,
                                  child: Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Bảng giá LPTB ô tô,xe máy',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),

                                Positioned(
                                  top: 10,
                                  right: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe80a, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  right: (screenWidth - 30 - 180)/5.5 - 15,
                                  child: Container(
                                      width: 90,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Địa chỉ CQT',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),

                                Positioned(
                                  top: 10,
                                  right: (screenWidth - 90)/2,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe817, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  right: (screenWidth - 30 - 90)/2,
                                  child: Container(
                                      width: 90,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Tra cứu thông tin NNT',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          height: 15,
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Container(
                            height: 110,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 10,
                                  left: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe80c, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  left: (screenWidth - 30 - 180)/5.5 - 20,
                                  child: Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Tra cứu hộ kinh doanh',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),

                                Positioned(
                                  top: 10,
                                  right: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe81a, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  right: (screenWidth - 30 - 180)/5.5 - 15,
                                  child: Container(
                                      width: 90,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Tra cứu người phụ thuộc',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),

                                Positioned(
                                  top: 10,
                                  right: (screenWidth - 90)/2,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe810, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  right: (screenWidth - 30 - 90)/2,
                                  child: Container(
                                      width: 90,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Công cụ tính thuế',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          height: 15,
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Container(
                            height: 110,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 10,
                                  left: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe826, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  left: (screenWidth - 30 - 180)/5.5 - 20,
                                  child: Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Tra cứu NH ủy nhiệm thu',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),

                                Positioned(
                                  top: 10,
                                  right: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe826, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  right: (screenWidth - 30 - 180)/5.5 - 15,
                                  child: Container(
                                      width: 90,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Tra cứu NH nộp thuế điện tử',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),

                                Positioned(
                                  top: 10,
                                  right: (screenWidth - 90)/2,
                                  child: GestureDetector(
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Color.fromARGB(255, 55, 67, 79),
                                      ),
                                      child: Icon(
                                        IconData(0xe82a, fontFamily: 'icon1',matchTextDirection: true),
                                        size: 32,
                                        color: Colors.white,
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(builder: (context) => ScreenTracuu()),
                                      );
                                    },
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  right: (screenWidth - 30 - 90)/2,
                                  child: Container(
                                      width: 90,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Tra cứu thông tin quyết toán',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          height: 15,
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Container(
                            height: 110,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 10,
                                  left: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe802, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  left: (screenWidth - 30 - 180)/5.5 - 20,
                                  child: Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Quét QR-Code',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),

                                Positioned(
                                  top: 10,
                                  right: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe823, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  right: (screenWidth - 30 - 180)/5.5 - 15,
                                  child: Container(
                                      width: 90,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Phản hồi về hộ kinh doanh',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),

                                Positioned(
                                  top: 10,
                                  right: (screenWidth - 90)/2,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe808, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  right: (screenWidth - 30 - 90)/2,
                                  child: Container(
                                      width: 90,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Tin tức',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          height: 25,
                        ),

                        Container(
                          height: 25,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                  width: 90,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 32, 51, 68),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(100),
                                        bottomRight: Radius.circular(100)// Điều này bo tròn góc trên bên phải
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'HỖ TRỢ',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'roboto',
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        Container(
                          height: 15,
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Container(
                            height: 110,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 10,
                                  left: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe809, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  left: (screenWidth - 30 - 180)/5.5 - 20,
                                  child: Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Câu hỏi thường gặp',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),

                                Positioned(
                                  top: 10,
                                  right: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe80b, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  right: (screenWidth - 30 - 180)/5.5 - 15,
                                  child: Container(
                                      width: 90,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Chia sẻ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),

                                Positioned(
                                  top: 10,
                                  right: (screenWidth - 90)/2,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe807, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  right: (screenWidth - 30 - 90)/2,
                                  child: Container(
                                      width: 90,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Hướng dẫn sử dụng',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          height: 15,
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Container(
                            height: 110,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 10,
                                  left: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe806, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  left: (screenWidth - 30 - 180)/5.5 - 20,
                                  child: Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Thông tin hỗ trợ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),

                                Positioned(
                                  top: 10,
                                  right: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe808, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  right: (screenWidth - 30 - 180)/5.5 - 15,
                                  child: Container(
                                      width: 90,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Thông báo nâng cấp',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),

                                Positioned(
                                  top: 10,
                                  right: (screenWidth - 90)/2,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe80d, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  right: (screenWidth - 30 - 90)/2,
                                  child: Container(
                                      width: 90,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Phiên bản ứng dụng',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          height: 25,
                        ),

                        Container(
                          height: 25,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                  width: 130,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 32, 51, 68),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(100),
                                        bottomRight: Radius.circular(100)// Điều này bo tròn góc trên bên phải
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'THIẾT LẬP CÁ NHÂN',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'roboto',
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        Container(
                          height: 15,
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Container(
                            height: 110,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 10,
                                  left: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe802, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  left: (screenWidth - 30 - 180)/5.5 - 20,
                                  child: Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Thiết lập ảnh đại diện',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),

                                Positioned(
                                  top: 10,
                                  right: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe834, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  right: (screenWidth - 30 - 180)/5.5 - 15,
                                  child: Container(
                                      width: 90,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Đăng nhập bằng vân tay/FaceID',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),

                                Positioned(
                                  top: 10,
                                  right: (screenWidth - 90)/2,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe803, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  right: (screenWidth - 30 - 90)/2,
                                  child: Container(
                                      width: 90,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Đổi mật khẩu đăng nhập',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          height: 15,
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Container(
                            height: 110,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 10,
                                  left: (screenWidth - 30 - 180)/5.5,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe800, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  left: (screenWidth - 30 - 180)/5.5 - 20,
                                  child: Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Đăng ký kênh nhận thông tin',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),

                                Positioned(
                                  top: 10,
                                  right: (screenWidth - 90)/2,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 55, 67, 79),
                                    ),
                                    child: Icon(
                                      IconData(0xe818, fontFamily: 'icon1',matchTextDirection: true),
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 75,
                                  right: (screenWidth - 30 - 90)/2,
                                  child: Container(
                                      width: 90,
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        'Cài đặt chức năng nổi bật',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: Colors.white,
                                            fontSize: 8
                                        ),
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          height: 25,
                        ),
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
