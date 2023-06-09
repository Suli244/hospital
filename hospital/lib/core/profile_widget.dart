
import 'package:flutter/material.dart';
import 'package:hospital/modols/profileModel.dart';
import 'app_fonts.dart';

class ProFileWidget extends StatelessWidget {
  const ProFileWidget({super.key, required this.madel});
 
 final ProFileMOdel madel;
  @override
  Widget build(BuildContext context) {
    return Row(children:  [
          Image.asset(
            madel.imeges,
            height: 32,
          ),
          const SizedBox(width: 18,),
          SizedBox(
          width: MediaQuery.of(context).size.width * 0.77,
            child: Text( madel.text, style: Fonts.w400s15,),
          ),

         ],
          );
  }
}
