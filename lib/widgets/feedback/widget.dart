import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:landing_page/widgets/feedback/styles.dart';

const Color errColor = Color(0xFFEF9A9A);
const Color goodColor = Color(0xFFC5E1A5);

// Define a custom Form widget.
class FeedBackView extends StatefulWidget {
  final double width;
  final double height;
  final String title;

  const FeedBackView({super.key, required this.width, required this.height, required this.title});

  @override
  State<FeedBackView> createState() => _FeedBackViewState();
}

class _FeedBackViewState extends State<FeedBackView> {
  Color phonefiller = feedbackWhite;
  Color emailfiller = feedbackWhite;
  Timer? _timer;

  void emailphoneChecker() {
    {
      final value = phoneController.text;
      Color newColor = errColor;
      if ((11 == value.length)) {
        newColor = goodColor;
      }
      setState(() {
        phonefiller = newColor;
      });
    }
    {
      final value = emailController.text;
      Color newColor = errColor;
      final bool isemail =
          RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value);
      if (isemail) {
        newColor = goodColor;
      }
      setState(() {
        emailfiller = newColor;
      });
    }
    _timer = Timer(const Duration(seconds: 3), () {
      setState(() {
        phonefiller = feedbackWhite;
        emailfiller = feedbackWhite;
      });
      _timer?.cancel();
    });
  }

  final phoneController = TextEditingController();
  final emailController = TextEditingController();

  _FeedBackViewState();

  @override
  Widget build(BuildContext context) {
    double width = widget.width;
    double height = widget.height;
    return Stack(
      children: [
        Image.asset(
          "imgs/global_background.jpg",
          width: width,
          height: height,
          alignment: Alignment.center,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: width,
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.title,
                style: bigWTextStyle,
                textAlign: TextAlign.center,
              ),
              const Text(
                "Оставьте свой номер!",
                style: medWTextStyle,
                textAlign: TextAlign.center,
                softWrap: true,
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: 200,
                child: TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "email@gmail.com",
                    labelText: "Введите email",
                    focusColor: Colors.black,
                    fillColor: emailfiller,
                    filled: true,
                    counterText: "\n",
                  ),
                ),
              ),
              SizedBox(
                width: 200,
                child: TextField(
                  controller: phoneController,
                  keyboardType: TextInputType.number,
                  maxLength: 11,
                  textAlign: TextAlign.center,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "89990000000",
                    labelText: "Введите номер",
                    focusColor: Colors.black,
                    fillColor: phonefiller,
                    filled: true,
                    counterText: "\n",
                  ),
                ),
              ),
              TextButton(
                onPressed: emailphoneChecker,
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(feedbackWhite),
                ),
                child: const Text(
                  "Отправить",
                  style: TextStyle(color: Colors.black, fontFamily: "Tahoma", fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    phonefiller = feedbackWhite;
    super.dispose();
  }
}
