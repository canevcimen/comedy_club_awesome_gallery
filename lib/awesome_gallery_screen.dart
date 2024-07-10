// import 'package:flutter/material.dart';
//
// class AwesomeGallery extends StatelessWidget {
//   List<String> images = [
//     'https://fotolifeakademi.com/uploads/2023/09/manzara-fotograflari.jpeg',
//     'https://binlercepresets.shop/wp-content/uploads/2023/11/cappadocia-landscape-turkey_984745-6.jpg',
//     'https://blog.obilet.com/wp-content/uploads/2023/07/0anagorsel-1-1024x683.jpeg',
//     'https://fotolifeakademi.com/uploads/2023/09/manzara-resmi-4.jpeg',
//     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFatQEPLnbccQaleMsglYsfcfZshGK1CJdMg&s',
//     'https://www.gezginfoto.com.tr/images/makaleler/etkili_manzara.jpg',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Awesome Gallery",
//           style: TextStyle(fontSize: 30.0),
//         ),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(8.0),
//         child: GridView.builder(
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               crossAxisSpacing: 8.0,
//               mainAxisSpacing: 8.0,
//             ),
//             itemCount: images.length,
//             itemBuilder: (context, index) {
//               return Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(8.0),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black12,
//                       blurRadius: 4.0,
//                       spreadRadius: 2.0,
//                     ),
//                   ],
//                 ),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(8.0),
//                   child: Image.network(images[index],
//                   fit: BoxFit.fill,
//                   ),
//                 ),
//               );
//             }),
//       ),
//     );
//   }
// }
