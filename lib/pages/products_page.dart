import 'package:flutter/material.dart';
import 'package:pixelsco/components/bottom_navbar_component.dart';
import 'package:pixelsco/components/new_collection_component.dart';
import 'package:pixelsco/components/top_bar_component.dart';
import 'package:pixelsco/widgets/card_widget.dart';
import 'package:pixelsco/pages/product_details.dart';
import 'package:pixelsco/components/product_class.dart';

class PixelscoTask extends StatefulWidget {
  const PixelscoTask({super.key});

  @override
  State<PixelscoTask> createState() => _PixelscoTaskState();
}

class _PixelscoTaskState extends State<PixelscoTask> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 33, 35, 39),
      bottomNavigationBar: const BottomNavbarComponent(),
      body: Container(
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
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 44),
          child: ListView(
            padding: const EdgeInsets.all(12),
            children: [
              const TopBarComponent(),
              const SizedBox(
                height: 20,
              ),
              const NewCollectionComponent(),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Popular",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 12,
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.75),
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  final product = products[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Pixelsco2Task(product: product);
                          },
                        ));
                      },
                      child: CardWidget(product: product),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}