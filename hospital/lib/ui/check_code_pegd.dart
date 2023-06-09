import 'package:flutter/material.dart';
import 'package:hospital/core/AppButton.dart';
import 'package:hospital/core/app_fonts.dart';
import 'package:hospital/ui/create_profile.dart';

class CheckCode extends StatefulWidget {
  const CheckCode({super.key, required this.ra});
  final int ra;
  @override
  State<CheckCode> createState() => _CheckCodeState();
}

class _CheckCodeState extends State<CheckCode> {
  Function()? onPressed;
  final TextEditingController controller = TextEditingController();
  String? errorText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xff007AFF),
          ),
        ),
        title: const Text(
          'Подтверждение номера',
          style: Fonts.w600s17,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            const Text(
              'Введите код из смс',
              style: Fonts.w500s22,
            ),
            const SizedBox(
              height: 143,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: controller,
              style: Fonts.w500s19,
              obscureText: true,
              obscuringCharacter: '*',
              maxLength: 4,
              textAlign: TextAlign.center,
              onChanged: (value) {
                if (value == widget.ra.toString() || value.isEmpty) {
                  if (value == widget.ra.toString()) {
                    onPressed = () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CreateProfile(),
                        ),
                      );
                    };
                  }

                  errorText = null;
                  setState(() {});
                } else {
                  onPressed = null;
                  errorText = 'Неверный код';
                  setState(() {});
                }
              },
              decoration: InputDecoration(
                prefixIcon: const Text(
                  'Код',
                  style: Fonts.w600s18,
                ),
                suffix: IconButton(
                  onPressed: () {
                    controller.text = '';
                    errorText = null;
                    setState(() {});
                  },
                  icon: const Icon(Icons.close),
                ),
                errorText: errorText,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(widget.ra.toString()),
                  ),
                );
              },
              child: Text(
                'Получить код повторно',
                style: Fonts.w400s15.copyWith(color: const Color(0xff007AFF)),
              ),
            ),
            const Spacer(),
            ButtoN(
              text: 'Далее',
              onPressed: onPressed,
            ),
          ],
        ),
      ),
    );
  }
}
