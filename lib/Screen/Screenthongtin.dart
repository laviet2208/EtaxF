import 'package:flutter/material.dart';
import 'package:untitled/Screen/Screenmain.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:untitled/Screen/containerCustom1.dart';

import '../final.dart';

class Screenthongtin extends StatefulWidget {
  const Screenthongtin({Key? key}) : super(key: key);

  @override
  State<Screenthongtin> createState() => _ScreenthongtinState();
}

class _ScreenthongtinState extends State<Screenthongtin> {
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
                              'Thông tin người nộp thuế',
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
                          padding: EdgeInsets.only(left: 0, right: 0),
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(102, 112, 122, 0.2)
                            ),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 15,
                                  left: 15,
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
                                  left: 95,
                                  top: 30,
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
                                  left: 95,
                                  bottom: 30,
                                  child: Container(
                                    width: screenWidth - 30 - 80,
                                    height: 16,
                                    child: AutoSizeText(
                                      data.name,
                                      style: TextStyle(
                                          fontFamily: 'roboto',
                                          fontWeight: FontWeight.normal,
                                          fontSize: 100,
                                          color: Colors.white
                                          //color: Color.fromARGB(255, 102, 112, 122)
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(height: 20,),
                        
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(102, 112, 122, 0.2)
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ContainerCustom1(title: 'Mã số thuế', content: data.code, screenWidth: screenWidth),
                              ContainerCustom1(title: 'Tên đầy đủ NNT', content: data.name, screenWidth: screenWidth),
                              ContainerCustom1(title: 'Địa chỉ', content: data.diachi, screenWidth: screenWidth),
                              ContainerCustom1(title: 'Tên CQT quản lý', content: data.cqt, screenWidth: screenWidth),
                              ContainerCustom1(title: 'Số điện thoại', content: data.sdt, screenWidth: screenWidth),
                              ContainerCustom1(title: 'Thư điện tử', content: data.email, screenWidth: screenWidth),
                              Container(
                                height: 20,
                              )
                            ],
                          )
                        ),

                        Container(
                          height: 25,
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 10,right: 10),
                          child: Container(
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
                              'Thay đổi thông tin đăng ký',
                              style: TextStyle(
                                  fontFamily: 'roboto',
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),

                        Container(
                          height: 15,
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 10,right: 10),
                          child: Container(
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
                              'Xóa tài khoản',
                              style: TextStyle(
                                  fontFamily: 'roboto',
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
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
