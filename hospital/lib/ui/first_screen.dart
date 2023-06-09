import 'package:flutter/material.dart';
import 'package:hospital/core/app_fonts.dart';
import 'package:hospital/core/AppButton.dart';
import 'package:hospital/core/profile_widget.dart';
import 'package:hospital/modols/profileModel.dart';
import 'package:hospital/ui/login_screen.dart';
import '../resources/resources.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});
  List<ProFileMOdel> models = [
    ProFileMOdel(
      imeges: Images.hospital,
      text: 'Записывайтесь на прием к самым лучшим специалистам',
    ),
    ProFileMOdel(
      imeges: Images.clipboard,
      text:
          'Сохраняйте результаты ваших анализов, диагнозы и рекомендации от врачей в собственную библиотеку',
    ),
    ProFileMOdel(
      imeges: Images.speech,
      text:
          'Просматривайте отзывы о врачах и дополняйте собственными комментариями',
    ),
    ProFileMOdel(
      imeges: Images.clipboard,
      text: 'Получайте уведомления о приеме или о поступивших сообщениях',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: const Text(
          'Профиль',
          style: Fonts.w600s17,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings_outlined,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Зачем нужен профиль?',
              style: Fonts.w500s22,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: models.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: ProFileWidget(madel: models[index]),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Center(
                child: ButtoN(
              text: 'Войти',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}
