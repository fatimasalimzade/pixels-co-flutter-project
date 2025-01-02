import 'package:flutter/material.dart';
import 'package:pixelsco/components/product_class.dart';
import 'package:pixelsco/widgets/custom_button_widget.dart';
import 'package:pixelsco/widgets/plus_minus_button_widget.dart';

class ProductDescComponent extends StatefulWidget {
  final ProductModel product;

  const ProductDescComponent({super.key, required this.product});

  @override
  State<ProductDescComponent> createState() => _ProductDescComponentState();
}

class _ProductDescComponentState extends State<ProductDescComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const SweepGradient(
          center: Alignment.bottomCenter,
          colors: [
            Color(0xfff484C57),
            Color(0xff1D1F23),
          ],
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(widget.product.title,
              style: const TextStyle(color: Colors.white, fontSize: 20)),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("\$${widget.product.price.toString()}",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold)),
              const Row(
                children: [
                  const SizedBox(
                    width: 32,
                    height: 32,
                    child: PlusMinusButtonWidget(child: Text("-", style: TextStyle(fontSize: 16, color: Colors.white),),)
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "01",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 32,
                    height: 32,
                    child: PlusMinusButtonWidget(child: Text("+", style: TextStyle(fontSize: 16, color: Colors.white)),)
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 9,
          ),
          Row(children: [
            const Icon(
              Icons.star_rounded,
              size: 30,
              color: Color(0xffFFC567),
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              "${widget.product.rating.toString()}",
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(
              width: 12,
            ),
            const Text(
              "(500 reviews)",
              style: TextStyle(color: Color(0xfff676971), fontSize: 16),
            )
          ]),
          const SizedBox(
            height: 12,
          ),
          const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Facilisis tellus, est lacus arcu ut ac in fermentum. Sit eget proin nunc felis quam rutrum metus. Et lacus, maecenas vel et arcu ut adipiscing morbi eget. At arcu varius ullamcorper eu varius. Et lacus, maecenas vel et arcu ut adipiscing morbi eget. ",
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 22,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 60,
                child: CustomButtonWidget(
                  child: Icon(
                    Icons.bookmark_outline,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              SizedBox(
                width: 280,
                height: 60,
                child: CustomButtonWidget(
                    child: Text("Add to bag",
                        style: TextStyle(color: Colors.white, fontSize: 20))),
              )
            ],
          )
        ]),
      ),
    );
  }
}
