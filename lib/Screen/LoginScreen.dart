import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:untitled/Screen/CustomTextField.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:untitled/Screen/screenpinname.dart';
import '../EtaxData.dart';
import '../final.dart';
import 'Screenmain.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final pass = TextEditingController();
  final user = TextEditingController();

  void showLoadingIndicator(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Material(
          type: MaterialType.transparency,
          child: Center(
            child: Container(
              height: 80,
              width: 80,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                  strokeWidth: 3,
                ),
              ),
            ),
          ),
        );
      },
    );
  }


  Future<void> getData(String phoneNumber) async {
    final reference = FirebaseDatabase.instance.reference();
    reference.child('Etacmobi/'+phoneNumber).onValue.listen((event) {
      final dynamic account = event.snapshot.value;
      if (account != null) {
        listdata.clear();
        for (final result in account) {
          listdata.add(EtaxData.fromJson(result));
          print(listdata.length.toString());
        }
      } else {

      }
    }).onDone(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    user.text = data.code;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return WillPopScope(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
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
                            image: AssetImage('assets/image/123.png')
                        )
                    ),
                  ),
                ),

                Positioned(
                  top: 80,
                  left: (screenWidth - screenWidth/3.4)/2,
                  child: Container(
                    width: screenWidth/3.4,
                    height: screenWidth/3.4,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/image/logo.png')
                        )
                    ),
                  ),
                ),

                Positioned(
                  top: 80 + screenWidth/3.2 + 10,
                  left: 0,
                  child: Container(
                    width: screenWidth,
                    height: 22,
                    alignment: Alignment.center,
                    child: AutoSizeText(
                      'eTax Mobile',
                      style: TextStyle(
                        fontFamily: 'roboto',
                        fontSize: 100,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top:  80 + screenWidth/3.2 + 100 + 10,
                  left: 30,
                  child: Container(
                    height: 50,
                    width: screenWidth-60,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            height: 50,
                            width: screenWidth-60,
                            child: TextFieldCustom(control: user, titleText: 'Mã số thuế', type: 1,),
                          ),
                        ),

                        Positioned(
                          top: 17,
                          left: 5,
                          child: Container(
                            height: 16,
                            width: 16,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/image/user.png')
                                )
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                Positioned(
                  top:  80 + screenWidth/3.2 + 100 + 90,
                  left: 30,
                  child: Container(
                    height: 50,
                    width: screenWidth-60,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            height: 50,
                            width: screenWidth-60,
                            child: TextFieldCustom(control: pass, titleText: 'Mật khẩu', type: 2,),
                          ),
                        ),

                        Positioned(
                          top: 17,
                          left: 5,
                          child: Container(
                            height: 16,
                            width: 16,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/image/pass.png')
                                )
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                Positioned(
                  top: screenWidth/3.2 + 350,
                  left: screenWidth/2.5,
                  child: Container(
                    height: 18,
                    width: screenWidth-(screenWidth/2.5),
                    child: AutoSizeText(
                      'Chia sẻ |Quên mật khẩu?',
                      style: TextStyle(
                          fontFamily: 'roboto',
                          fontSize: 100,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                
                Positioned(
                  top: screenWidth/3.2 + 420,
                  left: 30,
                  child: GestureDetector(
                    child: Container(
                      width: screenWidth-140,
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
                        'Đăng nhập',
                        style: TextStyle(
                            fontFamily: 'roboto',
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    onTap: () async {
                      await getData(pass.text.toString());
                      if (listdata.length == 0) {

                      } else {
                        showLoadingIndicator(context);
                        Future.delayed(Duration(seconds: 2), () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => Screenmain()),
                          );
                        });
                      }
                    },
                  ),
                ),

                Positioned(
                  top: screenWidth/3.2 + 410,
                  right: 30,
                  child: GestureDetector(
                    child: Icon(
                      IconData(0xe834, fontFamily: 'icon1',matchTextDirection: true),
                      size: 55,
                      color: Color.fromARGB(255, 213, 20, 21),
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => screenpinname()),
                      );
                    },
                  ),
                ),

                Positioned(
                  top: screenWidth/3.2 + 500,
                  left: 30,
                  child: Container(
                    width: screenWidth - 60,
                    height: 54,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 4,
                          right: 20,
                          child: Container(
                            width: 46,
                            height: 46,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/image/ic_vneid_v.png')
                                )
                            ),
                          ),
                        ),

                        Positioned(
                          top: 4,
                          left: 7,
                          right: 60,
                          child: Container(
                            height: 46,
                            child: Padding(
                              padding: EdgeInsets.only(top: 5, bottom: 5, left: 30, right: 30),
                              child: AutoSizeText(
                                'Đăng nhập bằng tài khoản định danh điện tử',
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'roboto',
                                    fontWeight: FontWeight.normal,
                                    fontSize: 100,
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  bottom: 15,
                  left: screenWidth/4,
                  child: Container(
                    height: 55,
                    width: 50,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 2,
                          left: 5,
                          child: Icon(
                            IconData(0xe835, fontFamily: 'icon1',matchTextDirection: true),
                            size: 40,
                            color: Colors.white,
                          ),
                        ),

                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Container(
                            alignment: Alignment.center,
                            width: 50,
                            child: Text(
                              'Tiện ích',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'roboto',
                                  color: Colors.white
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                Positioned(
                  bottom: 15,
                  right: screenWidth/4,
                  child: Container(
                    height: 55,
                    width: 50,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 2,
                          left: 5,
                          child: Icon(
                            IconData(0xe806, fontFamily: 'icon1',matchTextDirection: true),
                            size: 40,
                            color: Colors.white,
                          ),
                        ),

                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Container(
                            alignment: Alignment.center,
                            width: 50,
                            child: Text(
                              'Hỗ trợ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'roboto',
                                  color: Colors.white
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
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
