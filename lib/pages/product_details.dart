import 'package:flutter/material.dart';
import 'package:pixelsco/components/product_desc_component.dart';
import 'package:pixelsco/components/product_class.dart';

class Pixelsco2Task extends StatefulWidget {
  const Pixelsco2Task({super.key, required this.product});
  final ProductModel product;

  @override
  State<Pixelsco2Task> createState() => _Pixelsco2TaskState();
}

class _Pixelsco2TaskState extends State<Pixelsco2Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff484C57),
      body: Stack(
        children: [
          Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xfff484C57),
                Color.fromARGB(255, 0, 0, 0),
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 80,),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 50, top: 10),
                  child: Image.asset(
                    widget.product.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ProductDescComponent(product: widget.product),
            ],
          ),
        ),
        Positioned(
            top: 40,
            left: 16,
            child: IconButton(
              icon: const Icon(Icons.chevron_left, size: 30, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ]
      ),
    );
  }
}
