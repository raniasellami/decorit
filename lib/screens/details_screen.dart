import 'package:flutter/material.dart';
import 'package:pim/screens/constatnt.dart';
import 'package:pim/screens/models/product_model.dart';
import 'package:pim/screens/product_details.dart';
import 'package:pim/screens/product_image.dart';
import 'custom_appbar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            ProductImage(
              imageUrl: product.imageUrl,
            ),
            ProductDetails(
              productModel: product,
            ),
            CustomAppBar(),
          ],
        ),
      ),
    );
  }
}
