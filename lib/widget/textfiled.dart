import 'package:flutter/material.dart';

class TextFiledLogin extends StatelessWidget {
  const TextFiledLogin(
      {super.key, required this.lFiled, required this.pxFiled, required this.sfxFiled});
  final String lFiled;
  final String pxFiled;
  final Widget sfxFiled;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: TextField(
        decoration: InputDecoration(
          
          border: const UnderlineInputBorder(),
          label: Text(
            lFiled,
            style: const TextStyle(
              color: Color(0xFF8F959E),
              fontSize: 13,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              height: 0.08,
            ),
          ),
          prefix: Text(
            pxFiled,
            style: const TextStyle(
              color: Color(0xFF1D1E20),
              fontSize: 15,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              height: 0.07,
            ),
          ),
          suffix: sfxFiled
        ),
      ),
    );
  }
}
