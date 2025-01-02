import 'package:flutter/material.dart';

class CustomButtonWidget extends StatefulWidget {
  final Widget child;

  const CustomButtonWidget({super.key, required this.child});

  @override
  State<CustomButtonWidget> createState() => _CustomButtonWidgetState();
}

class _CustomButtonWidgetState extends State<CustomButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xfff484C57),
              Color(0xff1D1F23),
            ],
          ),
          borderRadius: BorderRadius.circular(16)),
      child: ElevatedButton(
          onPressed: () {},
          child: widget.child,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)))),
    );
  }
}
