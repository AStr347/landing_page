import 'package:flutter/material.dart';
import 'package:landing_page/widgets/bot/styles.dart';

class BotView extends StatelessWidget {
  const BotView({super.key});

  /// create image widget with standart param
  ///
  /// [path] - [in] string with path to asset
  ///
  /// [iheight] - [in] maximum height for image
  Image botImage(String path, double iheight) {
    return Image.asset(
      path,
      height: iheight,
      alignment: Alignment.center,
      fit: BoxFit.scaleDown,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blueGrey.shade100,
        child: Column(children: [
          const SizedBox(height: 50),
          Row(
            children: [
              // felx sum = 65
              const Spacer(flex: 3),
              Expanded(
                  flex: 5,
                  child: Column(children: [
                    botImage("imgs/logo120x120.png", 118),
                    const Text(
                      "2024 © Ермак",
                      textAlign: TextAlign.center,
                      style: botTextStyle,
                    ),
                  ])),
              const Spacer(flex: 1),
              const Expanded(
                flex: 37,
                child: Text(
                  "Все права защищены. Использование материалов сайта возможно с разрешения правообладателя.\nЛюбая информация, представленная на данном сайте, в том числе (но не ограничиваясь) касающаяся характеристик, планировок, наличия, стоимости объектов, а также упоминание об акциях и скидках, носит исключительно информационный характер и ни при каких условиях не является публичной офертой согласно ст.437 ГК РФ.",
                  textAlign: TextAlign.left,
                  style: botTextStyle,
                  softWrap: true,
                ),
              ),
              const Spacer(flex: 1),
              Expanded(flex: 2, child: botImage("imgs/vklogo.png", 118)),
              const Spacer(flex: 1),
              Expanded(flex: 2, child: botImage("imgs/telegramlogo.webp", 118)),
              const Spacer(flex: 1),
              const Expanded(
                flex: 10,
                child: Text(
                  "Контактное лицо:\n        Алевтина Ермакова\nТелефон:\n        +7 499 7488302",
                  style: botTextStyle,
                ),
              ),
              const Spacer(flex: 3),
            ],
          ),
          const SizedBox(height: 50),
        ]));
  }
}

class BotMobileView extends StatelessWidget {
  const BotMobileView({super.key});

  /// create image widget with standart param
  ///
  /// [path] - [in] string with path to asset
  ///
  /// [iheight] - [in] maximum height for image
  Image botImage(String path, double iheight) {
    return Image.asset(
      path,
      height: iheight,
      alignment: Alignment.center,
      fit: BoxFit.scaleDown,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blueGrey.shade100,
        child: Column(children: [
          const SizedBox(height: 50),
          const Text(
            "Все права защищены. Использование материалов сайта возможно с разрешения правообладателя.\nЛюбая информация, представленная на данном сайте, в том числе (но не ограничиваясь) касающаяся характеристик, планировок, наличия, стоимости объектов, а также упоминание об акциях и скидках, носит исключительно информационный характер и ни при каких условиях не является публичной офертой согласно ст.437 ГК РФ.",
            textAlign: TextAlign.center,
            style: botTextStyle,
            softWrap: true,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [botImage("imgs/vklogo.png", 118), botImage("imgs/telegramlogo.webp", 118)],
          ),
          const Text(
            "Контактное лицо:\n        Алевтина Ермакова\nТелефон:\n        +7 499 7488302",
            style: botTextStyle,
          ),
          botImage("imgs/logo120x120.png", 118),
          const Text(
            "2024 © Ермак",
            textAlign: TextAlign.center,
            style: botTextStyle,
          ),
          const SizedBox(height: 50),
        ]));
  }
}
