import 'package:flutter/material.dart';

class PlusMinusButtonWidget extends StatefulWidget {
  final Widget child;

  const PlusMinusButtonWidget({super.key, required this.child});

  @override
  State<PlusMinusButtonWidget> createState() => _PlusMinusButtonWidgetState();
}

class _PlusMinusButtonWidgetState extends State<PlusMinusButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xfff484C57),
              Color.fromARGB(255, 44, 47, 53),
            ],
          ),
          borderRadius: BorderRadius.circular(8)),
      child: ElevatedButton(
        onPressed: () {},
        child: Center(
          child: widget.child,
          ),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          alignment: Alignment.center,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}
