import 'dart:math';
import 'package:flutter/material.dart';
import 'package:hospital/core/app_fonts.dart';
import 'package:hospital/core/AppButton.dart';
import 'package:hospital/ui/check_code_pegd.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final int ra = Random().nextInt(8999) + 1000;
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            color: Colors.black,
            size: 25,
          ),
        ),
        title: const Text(
          'Вход',
          style: Fonts.w600s17,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Войти',
              style: Fonts.w700s34,
            ),
            const SizedBox(
              height: 49,
            ),
            const Text(
              'Номер телефона',
              style: Fonts.w400s15,
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(

              controller: controller,
              keyboardType: TextInputType.number,
              style: Fonts.w500s19,
              decoration: const InputDecoration(
                hintText: '0  _ _ _  _ _ _  _ _ _',
                hintStyle: Fonts.w700s17,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 15.5,
            ),
            const Text(
              'На указанный вами номер придет однократное СМС-сообщение с кодом подтверждения.',
              style: Fonts.w400s15,
            ),
            const Spacer(),
            Center(

              child: ButtoN(
                text: 'Далее',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CheckCode(ra: ra,),
                    ),
                  );
                  
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${ra.toString()}\n${controller.text}'
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
