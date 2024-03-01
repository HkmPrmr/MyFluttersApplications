import 'package:flutter/material.dart';
import 'package:sixth_homework/model/productsmodel.dart';
import 'package:sixth_homework/model/resultmodel.dart';
import 'package:sixth_homework/service/products_service.dart';
import 'package:sixth_homework/widget/cardclothes.dart';
import 'package:sixth_homework/widget/elevatedbuttonbrand.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
            width: 30,
            height: 30,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: Image.asset('assets/images/menu.png')),
        actions: [
          CircleAvatar(
            backgroundColor: const Color(0xffffffff),
            child: Image.asset('assets/images/Bag.png'),
          )
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            'Home',
            style: TextStyle(
              color: Color(0xFF9775FA),
              fontSize: 11,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              height: 0.10,
            ),
          ),
          CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            child: Image.asset('assets/images/walleticon.png'),
          ),
          CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            //foregroundColor:  Color.fromARGB(255, 255, 255, 255),
            child: Image.asset('assets/images/Vector.png'),
          ),
          CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            child: Image.asset('assets/images/favorit.png'),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const Row(
              children: [
                Text(
                  'Hello',
                  style: TextStyle(
                    color: Color(0xFF1D1E20),
                    fontSize: 28,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 0.04,
                    letterSpacing: -0.21,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Text(
                  'Welcom to laza',
                  style: TextStyle(
                    color: Color(0xFF8F959E),
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0.07,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 40,
                    width: 260,
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 184, 179, 179),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 184, 179, 179))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 166, 160, 160))),
                        prefixIcon:
                            Icon(Icons.search, color: Color(0xFF8F959E)),
                        hintText: 'Search....',
                        hintStyle: TextStyle(
                          color: Color(0xFF8F959E),
                          fontSize: 13,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.08,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7))),
                      ),
                    ),
                  ),
                  Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                          color: Color(0xFF9775FA),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                      child: const Icon(
                        Icons.mic,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
            ////////////////////////////////////////////////////////

            const SizedBox(
              height: 5,
            ),

            /////////////////////////////////////////////////////////////////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Chose Brand',
                    style: TextStyle(
                      color: Color(0xFF1D1E20),
                      fontSize: 17,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 0.06,
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'View all',
                      style: TextStyle(
                        color: Color(0xFF8F959E),
                        fontSize: 13,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0.08,
                      ),
                    ))
              ],
            ),
            ////////////////////////////////

            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                //itemExtent: 120,
                padding: const EdgeInsets.only(top: 5),
                children: const [
                  BrandButton(
                      imageBrandurl: 'assets/images/Adidaslogo.png',
                      nameBrand: 'Adidas'),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: BrandButton(
                        imageBrandurl: 'assets/images/nikelogo.png',
                        nameBrand: 'Nike'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: BrandButton(
                        imageBrandurl: 'assets/images/filalogo.png',
                        nameBrand: 'Fila'),
                  ),
                  BrandButton(
                      imageBrandurl: 'assets/images/pumalogo.png',
                      nameBrand: 'Puma'),
                ],
              ),
            ),
            ////////////////////////////////////////////////////////

            const SizedBox(
              height: 5,
            ),
            ////////////////////////////////////

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('New Arrival',
                    style: TextStyle(
                      color: Color(0xFF1D1E20),
                      fontSize: 17,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 0.06,
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'View all',
                      style: TextStyle(
                        color: Color(0xFF8F959E),
                        fontSize: 13,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0.08,
                      ),
                    ))
              ],
            ),
            ///////////////////////////////////
            const SizedBox(
              height: 5,
            ),
            ////////////////////////////////

            // Container(
            //   color: const Color(0xFFFEFEFE),
            //   width: 360,
            //   height: 355,
            //   child: GridView(
            //     scrollDirection: Axis.vertical,
            //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //         childAspectRatio: 1 / 1.7,
            //         crossAxisCount: 2,
            //         crossAxisSpacing: 5,
            //         mainAxisSpacing: 17),
            //     children: const [
            //       LazaCard(
            //           imageUrl: 'assets/images/Laza1.png',
            //           description: 'Nike Sportswear Club Fleece',
            //           price: '\$99'),
            //       LazaCard(
            //           imageUrl: 'assets/images/Laza2.png',
            //           description: 'Trail Running Jacket Nike \nWindrunner',
            //           price: '\$99'),
            //       LazaCard(
            //           imageUrl: 'assets/images/Laza3.png',
            //           description: 'Nike Sportswear Club Fleece',
            //           price: '\$99'),
            //       LazaCard(
            //           imageUrl: 'assets/images/Laza4.png',
            //           description: 'Nike Sportswear Club Fleece',
            //           price: '\$99'),
            //     ],
            //   ),
            // ),
            Container(
              color: const Color(0xFFFEFEFE),
              width: 360,
              height: 355,
              child: FutureBuilder(
                future: ProductServiceImp().getProducts(),
                builder: (context, snapshot) {
                  print(snapshot);
                  if (snapshot.hasData) {
                    print('snapsot has data');
                    List<ResultModel> temp = snapshot.data as List<ResultModel>;
                    if (temp is List<ProductModel>) {
                      return GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 1 / 1.7,
                                crossAxisCount: 2,
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 17),
                        itemCount: temp.length,
                        itemBuilder: (context, index) => LazaCard(
                          imageUrl: temp[index].images[0],
                          description: temp[index].title,
                          price: temp[index].price.toString(),
                          rate: temp[index].rating.toString(),
                        ),
                      );
                    } else {
                      return const Text(
                        "Ops something went wronge",
                        style: TextStyle(fontSize: 20, color: Colors.red),
                      );
                    }
                  } else {
                    print("no data");
                    return const CircularProgressIndicator(
                      color: Color(0xFF9775FA),
                    );
                  }
                },
              ),
            )
          ],
        ),
      ),
      //   // floatingActionButton: ElevatedButton(onPressed: ()async{

      //   //   List<ResultModel> temp = await ProductServiceImp().getProducts();

      //   //               if (temp is List<ProductModel>) {
      //   //                 print('there is data');
      //   //                  GridView.builder(
      //   //                   gridDelegate:
      //   //                       const SliverGridDelegateWithFixedCrossAxisCount(
      //   //                           childAspectRatio: 1 / 1.7,
      //   //                           crossAxisCount: 2,
      //   //                           crossAxisSpacing: 5,
      //   //                           mainAxisSpacing: 17),
      //   //                   itemCount: temp.length,
      //   //                   itemBuilder: (context, index) => LazaCard(
      //   //                       imageUrl: temp[index].thumbnail.toString(),
      //   //                       description: temp[index].title.toString(),
      //   //                       price: '${temp[index].price.toString()}\$99'),
      //   //                 );
      //   //               } else {
      //   //                   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:  Text('There is something went wronge'),backgroundColor: Colors.red,));
      //   //               }

      //   }, child: const Text("press me")) ,
    );
  }
}
