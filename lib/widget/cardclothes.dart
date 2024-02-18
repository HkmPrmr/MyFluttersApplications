import 'package:flutter/material.dart';

class LazaCard extends StatelessWidget {
  const LazaCard(
      {super.key,
      required this.imageUrl,
      required this.description,
      required this.price});
  final String imageUrl;
  final String description;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: const Color(0xFFFEFEFE),

      // elevation: 10,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 200,
              alignment: const Alignment(0.9, -0.9),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                      image: AssetImage(imageUrl), fit: BoxFit.cover)),
              child: CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 245, 242, 242),
                child: Image.asset('assets/images/favorit.png'),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 7, top: 10),
            child: Text(
              description,
              style: const TextStyle(
                color: Color(0xFF1D1E20),
                fontSize: 11,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                //height: 0.13,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Text(price,
                style: const TextStyle(
                  color: Color(0xFF1D1E20),
                  fontSize: 13,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0.08,
                )),
          )
        ],
      ),
    );
  }
}
