import 'package:flutter/material.dart';
import 'package:pixelsco/components/product_class.dart';
import 'package:pixelsco/widgets/plus_minus_button_widget.dart';

class CardWidget extends StatelessWidget {
  final ProductModel product;

  const CardWidget({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: Colors.transparent,
      child: Expanded(
        child: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color(0xfff484C57),
                Color(0xff1D1F23),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.star_rounded,
                      size: 18,
                      color: Color(0xffFFC567),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      "${product.rating.toString()}",
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Expanded(
                  child: Image.asset(
                    "${product.image}",
                  ),
                ),
                Text(
                  "${product.title}",
                  style: const TextStyle(color: Colors.white, fontSize: 13),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${product.price.toString()}",
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                          width: 28,
                          height: 24,
                          child: PlusMinusButtonWidget(
                              child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 16,
                          )))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
