// import 'package:fade_portal/Models/ProductModel.dart';
// import 'package:fade_portal/Screens/User/ProductDescription.dart';
// import 'package:flutter/material.dart';

// import '../SizeConfig.dart';

// class ProductCard extends StatefulWidget {
//   const ProductCard({
//     Key key,
//     @required this.product,
//     this.width = 140,
//     this.aspectRetio = 1.02,
//     //@required this.product,
//   }) : super(key: key);

//   final double width, aspectRetio;
//   final Product product;

//   @override
//   _ProductCardState createState() => _ProductCardState();
// }

// class _ProductCardState extends State<ProductCard> {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: getProportionateScreenWidth(widget.width),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           AspectRatio(
//             aspectRatio: 1.02,
//             child: Container(
//               padding: EdgeInsets.all(getProportionateScreenWidth(20)),
//               decoration: BoxDecoration(
//                 color: Color(0xFF979797).withOpacity(0.1),
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               child: Hero(
//                 tag: "1",
//                 child: Image.network(widget.product.image),
//               ),
//             ),
//           ),
//           const SizedBox(height: 10),
//           Text(
//             widget.product.name,
//             // style: TextStyle(color: Colors.black),
//             maxLines: 2,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 "\$${widget.product.price}",
//                 style: TextStyle(
//                   fontSize: getProportionateScreenWidth(18),
//                   fontWeight: FontWeight.w600,
//                   // color: C,
//                 ),
//               ),
//               // InkWell(
//               //   borderRadius: BorderRadius.circular(50),
//               //   onTap: () {
//               //     if (widget.product.isFavourite) {
//               //       setState(() {
//               //         favourites.remove(widget.product.id);
//               //         widget.product.isFavourite = false;
//               //       });
//               //       FirebaseFirestore.instance
//               //           .collection("user")
//               //           .doc(FirebaseAuth.instance.currentUser.email)
//               //           .update({"favourites": favourites});
//               //     } else {
//               //       setState(() {
//               //         favourites.add(widget.product.id);
//               //         widget.product.isFavourite = true;
//               //       });
//               //       FirebaseFirestore.instance
//               //           .collection("user")
//               //           .doc(FirebaseAuth.instance.currentUser.email)
//               //           .update({"favourites": favourites});
//               //     }
//               //   },
//               //   child: Container(
//               //     padding: EdgeInsets.all(getProportionateScreenWidth(8)),
//               //     height: getProportionateScreenWidth(28),
//               //     width: getProportionateScreenWidth(28),
//               //     decoration: BoxDecoration(
//               //       color: widget.product.isFavourite
//               //           ? kTextColor.withOpacity(0.15)
//               //           : kSecondaryColor.withOpacity(0.1),
//               //       shape: BoxShape.circle,
//               //     ),
//               //     child: SvgPicture.asset(
//               //       "assets/icons/Heart Icon_2.svg",
//               //       color: widget.product.isFavourite
//               //           ? Color(0xFFFF4848)
//               //           : Color(0xFFDBDEE4),
//               //     ),
//               //   ),
//               // ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
