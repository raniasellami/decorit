
import 'package:flutter/material.dart';

import 'package:pim/models/product_model.dart';
import 'package:pim/screens/constatnt.dart';

import 'components/custom_appbar.dart';
import 'components/product_details.dart';
import 'components/product_image.dart';

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
            ProductImage(imageUrl: product.imageUrl,),
            ProductDetails(productModel: product,),
            CustomAppBar(),
          ],
        ),
      ),
    );
  }
}