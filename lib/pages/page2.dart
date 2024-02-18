import 'package:flutter/material.dart';
import 'package:sixth_homework/pages/thirdpage.dart';
import 'package:sixth_homework/widget/textfiled.dart';

bool isswitch = true;

class Page2 extends StatelessWidget {
  const Page2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Sign Up',
            style: TextStyle(
              color: Color(0xFF1D1E20),
              fontSize: 28,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              height: 0.04,
              letterSpacing: -0.21,
            ),
          ),
          const SizedBox(
            height: 150,
          ),
          const TextFiledLogin(
            lFiled: 'Username',
            pxFiled: 'Esther Howard',
            sfxFiled: Icon(Icons.check, color: Color(0xFF34C358)),
          ),
          const SizedBox(
            height: 10,
          ),
          const TextFiledLogin(
            lFiled: 'Password',
            pxFiled: 'HJ@#9783kja',
            sfxFiled: Text(
              'Strong',
              style: TextStyle(
                color: Color(0xFF34C559),
                fontSize: 11,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0.10,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const TextFiledLogin(
            lFiled: 'Email Address',
            pxFiled: 'bill.sanders@example.com',
            sfxFiled: Icon(Icons.check, color: Color(0xFF34C358)),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Remember me',
                  style: TextStyle(
                    color: Color(0xFF1D1E20),
                    fontSize: 13,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w500,
                    height: 0.08,
                  ),
                ),
                Switch(
                    value: isswitch,
                    onChanged: (value) {
                      isswitch = value;
                    },
                    activeColor: const Color(0xFF34C358))
              ],
            ),
          ),
          const SizedBox(
            height: 101,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const ThirdPage();
              }));
            },
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color(0xFF9775FA)),
                fixedSize: MaterialStatePropertyAll(Size.fromWidth(375)),
                maximumSize: MaterialStatePropertyAll(Size.fromHeight(75)),
                shape: MaterialStatePropertyAll(BeveledRectangleBorder())),
            child: const Text(
              'Sign Up',
              style: TextStyle(
                color: Color(0xFFFEFEFE),
                fontSize: 17,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 0.06,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
