import 'package:flutter/material.dart';
import 'package:sixth_homework/pages/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            height: 681,
            width: 1000,
            decoration: const BoxDecoration(color: Color(0xFF9775FA)),
            child: MaterialButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const Page2();
                }));
              },
              child: Image.asset('assets/images/logo.png'),
            ))
      ],
    );
  }
}
