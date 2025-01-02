import 'package:flutter/material.dart';

class NewCollectionComponent extends StatelessWidget {
  const NewCollectionComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const SweepGradient(
          center: Alignment.centerRight,
          colors: [
            Color(0xfff484C57),
            Color(0xff1D1F23),
          ],
        ),
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 36, 36, 36).withOpacity(0.2),
                          offset: const Offset(0, 0),
                          blurRadius: 6,
                          spreadRadius: 1,
                        ),
                      ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "New Vintage Collection",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 193, 193, 193),
                          Color(0xff32343B),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 18, 18, 18).withOpacity(0.3),
                          offset: const Offset(0, 0),
                          blurRadius: 6,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(0.7),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 73, 75, 81),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: SizedBox(
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              foregroundColor: Colors.white,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            child: const Text("Explore now"),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Image.asset(
                "assets/img/cam.png",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
