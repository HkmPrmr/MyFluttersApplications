import 'package:flutter/material.dart';

class BrandButton extends StatelessWidget {
  const BrandButton(
      {super.key, required this.imageBrandurl, required this.nameBrand});
  final String imageBrandurl;
  final String nameBrand;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: const ButtonStyle(
          surfaceTintColor: MaterialStatePropertyAll(Color.fromARGB(255, 203, 215, 227)),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
          side: MaterialStatePropertyAll(BorderSide(color: Colors.white))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                width: 27,
                height: 25,
                child: Image(
                  image: AssetImage(imageBrandurl),
                  fit: BoxFit.contain,
                )),
            Text(
              nameBrand,
              style: const TextStyle(
                color: Color(0xFF1D1E20),
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 0.07,
              ),
            )
          ],
        ));
  }
}
