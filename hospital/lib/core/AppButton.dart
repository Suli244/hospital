import 'package:flutter/material.dart';
import 'app_fonts.dart';

class ButtoN extends StatelessWidget {
  const ButtoN({super.key, required this.text, required this.onPressed});
  final String text;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 296,
      height: 54,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff4A86CC),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        onPressed: onPressed,
        child: Text(
          text,
          style: Fonts.w600s18.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
