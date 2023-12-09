import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Buttontype1.dart';

class screenpinname extends StatefulWidget {
  const screenpinname({Key? key}) : super(key: key);
  @override
  State<screenpinname> createState() => _screenpinnameState();
}

class _screenpinnameState extends State<screenpinname> {
  final name = TextEditingController();
  final tax = TextEditingController();
  final diachi = TextEditingController();
  final cqt = TextEditingController();
  final sdt = TextEditingController();
  final mail = TextEditingController();

  Future<void> savename(String username) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('name', username);
  }

  Future<void> savestax(String username) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('tax', username);
  }

  Future<void> saves(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }


  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: ListView(
          children: [
            Container(height: 20,),

            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Tên trong app',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'arial',
                    fontWeight: FontWeight.normal
                ),
              ),
            ),

            Container(height: 10,),

            Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 50,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                      border: Border.all(
                        width: 2,
                        color: Colors.grey,
                      )
                  ),

                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Form(
                      child: TextFormField(
                        controller: name,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'arial',
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Nhập tên trong app',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontFamily: 'arial',
                          ),
                        ),
                      ),
                    ),
                  ),
                )
            ),

            Container(height: 20,),

            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Mã số thuế',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'arial',
                    fontWeight: FontWeight.normal
                ),
              ),
            ),

            Container(height: 10,),

            Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 50,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                      border: Border.all(
                        width: 2,
                        color: Colors.grey,
                      )
                  ),

                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Form(
                      child: TextFormField(
                        controller: tax,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'arial',
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Nhập số tài khoản',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontFamily: 'arial',
                          ),
                        ),
                      ),
                    ),
                  ),
                )
            ),

            Container(height: 20,),

            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Địa chỉ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'arial',
                    fontWeight: FontWeight.normal
                ),
              ),
            ),

            Container(height: 10,),

            Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 50,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                      border: Border.all(
                        width: 2,
                        color: Colors.grey,
                      )
                  ),

                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Form(
                      child: TextFormField(
                        controller: diachi,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'arial',
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Nhập địa chỉ',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontFamily: 'arial',
                          ),
                        ),
                      ),
                    ),
                  ),
                )
            ),

            Container(height: 20,),

            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Tên CQT',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'arial',
                    fontWeight: FontWeight.normal
                ),
              ),
            ),

            Container(height: 10,),

            Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 50,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                      border: Border.all(
                        width: 2,
                        color: Colors.grey,
                      )
                  ),

                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Form(
                      child: TextFormField(
                        controller: cqt,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'arial',
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Nhập tên CQT',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontFamily: 'arial',
                          ),
                        ),
                      ),
                    ),
                  ),
                )
            ),

            Container(height: 20,),

            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Số điện thoại',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'arial',
                    fontWeight: FontWeight.normal
                ),
              ),
            ),

            Container(height: 10,),

            Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 50,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                      border: Border.all(
                        width: 2,
                        color: Colors.grey,
                      )
                  ),

                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Form(
                      child: TextFormField(
                        controller: sdt,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'arial',
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Nhập sdt',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontFamily: 'arial',
                          ),
                        ),
                      ),
                    ),
                  ),
                )
            ),

            Container(height: 20,),

            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Email',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'arial',
                    fontWeight: FontWeight.normal
                ),
              ),
            ),

            Container(height: 10,),

            Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 50,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                      border: Border.all(
                        width: 2,
                        color: Colors.grey,
                      )
                  ),

                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Form(
                      child: TextFormField(
                        controller: mail,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'arial',
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Nhập mail',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontFamily: 'arial',
                          ),
                        ),
                      ),
                    ),
                  ),
                )
            ),

            Container(height: 20,),


            Padding(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: ButtonType1(Height: 60, Width: 100, color: Colors.redAccent, radiusBorder: 30, title: 'Lưu thông tin', fontText: 'arial', colorText: Colors.white,
                onTap: () async{
                   if (name.text.isNotEmpty && tax.text.isNotEmpty && diachi.text.isNotEmpty && cqt.text.isNotEmpty && sdt.text.isNotEmpty && mail.text.isNotEmpty) {
                     setState(() {
                       loading = true;
                     });
                     await savename(name.text.toString());
                     await savestax(tax.text.toString());
                     await saves('diachi', diachi.text.toString());
                     await saves('cqt', cqt.text.toString());
                     await saves('sdt', sdt.text.toString());
                     await saves('mail', mail.text.toString());
                     exit(0);
                   } else {

                   }
                },loading: loading,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
