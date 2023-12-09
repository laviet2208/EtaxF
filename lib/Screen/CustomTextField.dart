import 'package:flutter/material.dart';

class TextFieldCustom extends StatefulWidget {
  final TextEditingController control;
  final String titleText;
  final int type;
  const TextFieldCustom({Key? key, required this.control, required this.titleText, required this.type}) : super(key: key);

  @override
  State<TextFieldCustom> createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _animation = Tween(begin: 300.0, end: 40.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false, // this avoids the overflow error
      body: GestureDetector( // to dismiss the keyboard when the user tabs out of the TextField
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent
          ),
          padding: const EdgeInsets.only(left: 0),
            child: TextFormField(
              controller: widget.control,
              decoration: InputDecoration(
                labelText: widget.titleText,
                labelStyle: TextStyle(
                  color: (_focusNode.hasFocus) ? Colors.white : Color.fromARGB(255, 205, 206, 210),
                  fontFamily: 'roboto',
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 0.5),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 0.5),
                ),
                contentPadding: EdgeInsets.only(left: 37.0, bottom: 2, top: 3),
                // Sử dụng suffixIcon để thêm biểu tượng con mắt
                suffixIcon: GestureDetector(
                  child: Icon(
                    Icons.remove_red_eye_sharp, // Biểu tượng con mắt
                    color: Colors.grey,
                    size: widget.type == 1 ? 0 : 16,
                  ),
                ),
              ),
              style: TextStyle(
                fontFamily: 'roboto',
                color: Colors.white,
                fontSize: 16,
              ),
              cursorColor: Colors.redAccent,
              focusNode: _focusNode,
              obscureText: widget.type == 1 ? false : true, // Ẩn dưới dạng dấu chấm tròn sau khi nhập
            )

        ),
      ),
    );
  }
}


    

