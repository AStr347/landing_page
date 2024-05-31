import 'package:flutter/material.dart';

const ourHelpText = """
  \u2022 Сдача в аренду и управление вашей недвижимостью:
      > Оплата счетов
      > Уборка
  \u2022 Помощь в ремонте и его организации
      > Дизайн
      > Подбор и покупка мебели
      > Найм бригады
""";

class OurHelpView extends StatelessWidget {
  const OurHelpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromRGBO(207, 216, 220, 1),
        child: const Column(children: [
          SizedBox(height: 50),
          Row(children: [
            Spacer(flex: 1),
            Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Text(
                      "Наша помощь после сделки",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: "Tahoma", fontSize: 48),
                      softWrap: true,
                    ),
                    Text(
                      ourHelpText,
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: "Tahoma", fontSize: 24),
                      softWrap: true,
                    )
                  ],
                )),
            Spacer(flex: 1),
          ]),
          SizedBox(height: 50),
        ]));
  }
}

class OurHelpMobileView extends StatelessWidget {
  const OurHelpMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromRGBO(207, 216, 220, 1),
        child: const Column(children: [
          SizedBox(height: 50),
          Column(
            children: [
              Text(
                "Наша помощь после сделки",
                textAlign: TextAlign.left,
                style: TextStyle(fontFamily: "Tahoma", fontSize: 48),
                softWrap: true,
              ),
              Text(
                ourHelpText,
                textAlign: TextAlign.left,
                style: TextStyle(fontFamily: "Tahoma", fontSize: 24),
                softWrap: true,
              )
            ],
          ),
          SizedBox(height: 50),
        ]));
  }
}
