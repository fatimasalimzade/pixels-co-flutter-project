import 'package:flutter/material.dart';

class TopBarComponent extends StatefulWidget {

  const TopBarComponent({ super.key });

  @override
  State<TopBarComponent> createState() => _TopBarComponentState();
}

class _TopBarComponentState extends State<TopBarComponent> {

   @override
   Widget build(BuildContext context) {
       return Container(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "PixelsCo",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
              );
  }
}