import 'package:flutter/material.dart';
import 'package:sixth_homework/pages/page1.dart';

class CorePage extends StatelessWidget {
   const CorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       body: Page1()  //LazaCard(imageUrl: 'assets/images/logo.png', description: 'kfhdhkfkffh', price: '44') 
    );
  }
}
