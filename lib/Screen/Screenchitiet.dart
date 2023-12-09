import 'package:flutter/material.dart';
import 'package:untitled/EtaxData.dart';
import 'package:untitled/Screen/ScreenTracuu.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:untitled/Screen/containerCustom.dart';

class Screenchitiet extends StatefulWidget {
  final EtaxData etaxData;
  const Screenchitiet({Key? key, required this.etaxData}) : super(key: key);

  @override
  State<Screenchitiet> createState() => _ScreenchitietState();
}

class _ScreenchitietState extends State<Screenchitiet> {
  String formatDoubleToString(double number) {
    return number.toStringAsFixed(0).replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (Match m) => '${m[1]},',
    );
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
                                MaterialPageRoute(builder: (context) => ScreenTracuu()),
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
                              'Thông tin quyết toán',
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
                  top: 120,
                  left: 0,
                  child: Container(
                    width: screenWidth,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.15)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 15,right: 15),
                      child: Container(
                        width: screenWidth-30,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(height: 20,),
                            ContainerCustom(title: 'Mã tổ chức thu nhập', content: widget.etaxData.matochuc, width: screenWidth-30, screenWidth: screenWidth),
                            ContainerCustom(title: 'Tên tổ chức trả thu nhập', content: widget.etaxData.tentochuc, width: screenWidth-30, screenWidth: screenWidth),
                            ContainerCustom(title: 'Thu nhập chịu thuế', content: formatDoubleToString(widget.etaxData.thunhapchiuthue), width: screenWidth-30, screenWidth: screenWidth),
                            ContainerCustom(title: 'Số lượng NPT tính giảm trừ', content: widget.etaxData.npt.toInt().toString(), width: screenWidth-30, screenWidth: screenWidth),
                            ContainerCustom(title: 'Tổng số tiền giảm trừ gia cảnh', content: formatDoubleToString(widget.etaxData.giamtrugiacanh), width: screenWidth-30, screenWidth: screenWidth),
                            ContainerCustom(title: 'Từ thiện,nhân đạo,khuyến học', content: formatDoubleToString(widget.etaxData.tuthien), width: screenWidth-30, screenWidth: screenWidth),
                            ContainerCustom(title: 'Bảo hiểm được trừ', content: formatDoubleToString(widget.etaxData.baohiem), width: screenWidth-30, screenWidth: screenWidth),
                            ContainerCustom(title: 'Quỹ hưu trí tự nguyện được trừ', content: formatDoubleToString(widget.etaxData.huutri), width: screenWidth-30, screenWidth: screenWidth),
                            ContainerCustom(title: 'Số thuế đã khấu trừ', content: formatDoubleToString(widget.etaxData.thuakhautru), width: screenWidth-30, screenWidth: screenWidth),
                            Container(height: 20,)
                          ],
                        ),
                      ),
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
