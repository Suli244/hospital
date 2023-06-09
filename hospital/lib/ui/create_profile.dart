import 'package:flutter/material.dart';
import '../core/AppButton.dart';
import '../core/app_fonts.dart';

class CreateProfile extends StatelessWidget {
  CreateProfile({super.key});
  final TextEditingController name = TextEditingController();
  final TextEditingController surName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          'Создание профиля',
          style: Fonts.w600s17,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 32,
            ),
            const Text(
              'Имя',
              style: Fonts.w400s15,
            ),
            TextField(
              keyboardType: TextInputType.name,
              controller: name,
              decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                hintText: 'Введите ваше имя',
                hintStyle: Fonts.w400s17.copyWith(
                  color: const Color(0xffAFAFAF),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const Text(
              'Фамилия',
              style: Fonts.w400s15,
            ),
            TextField(
              keyboardType: TextInputType.name,
              controller: surName,
              decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                hintText: 'Введите вашу фамилию',
                hintStyle: Fonts.w400s17.copyWith(
                  color: const Color(0xffAFAFAF),
                ),
              ),
            ),
            const Spacer(),
            Center(
              child: ButtoN(
                text: 'Далее',
                onPressed: () {
                  print(name.text);
                  print(surName.text);
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
