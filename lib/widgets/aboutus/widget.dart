import 'package:flutter/material.dart';

const title = "Наши преимущества";
const ourhelpText = """
  \u2022 Мы продаем свою недвижимость, мы уже выбрали лучшее на рынке за вас
  \u2022 Цены ниже рынка, а качество выше, тк мы уже вложились в объект, а не работаем за комиссию!
  \u2022 Оплата в рассрочку, помощь с кредитованием сделки
  \u2022 Покупателям помогаем оформить сделку бесплатно!
  \u2022 Быстрое оформление сделки(2-3дня)
  \u2022 Юридичекая чистота и прозрачность
  \u2022 Бесплатное оформление недвижимости в собственность
  \u2022 Бесплатное подключение воды и электричества (в случае покупки отдельного дома)
""";

const titleStyle = TextStyle(color: Colors.black, fontFamily: "Tahoma", fontSize: 32);
const infoStyle = TextStyle(color: Colors.black, fontFamily: "Tahoma", fontSize: 18);

class AboutUsView extends StatelessWidget {
  const AboutUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(0xff, 0x99, 0xbd, 0xdc),
        child: Row(children: [
          Expanded(
              flex: 5,
              child: Image.asset(
                "imgs/aboutus.webp",
                alignment: Alignment.center,
                fit: BoxFit.cover,
              )),
          const Spacer(flex: 1),
          const Expanded(
              flex: 5,
              child: Column(children: [
                Text(
                  title,
                  style: titleStyle,
                ),
                Text(
                  ourhelpText,
                  style: infoStyle,
                ),
              ])),
          const Spacer(flex: 1),
        ]));
  }
}

class AboutUsMobileView extends StatelessWidget {
  const AboutUsMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(0xff, 0x99, 0xbd, 0xdc),
      child: Column(children: [
        Image.asset(
          "imgs/aboutus.webp",
          alignment: Alignment.center,
          fit: BoxFit.cover,
        ),
        const Text(
          title,
          style: titleStyle,
        ),
        const Text(
          ourhelpText,
          style: infoStyle,
        ),
      ]),
    );
  }
}
