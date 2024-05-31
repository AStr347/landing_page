import 'package:flutter/material.dart';

const natureText = """
Природа Крыма поражает своим многообразием и красотой
Полуостров расположен между Чёрным и Азовским морями, что создаёт уникальный микроклимат
Здесь есть степи, горы и побережье, каждая зона обладает своими особенностями
Южное побережье радует круглый год цветущими растениями


Зимы в Крыму мягкие, весна прохладнее осени, а лето неизменно жаркое и солнечное
""";

class NatureView extends StatelessWidget {
  const NatureView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.purple.shade100, //Colors.amber.shade200,
        child: Row(children: [
          const Spacer(flex: 1),
          const Expanded(
              flex: 5,
              child: Text(
                natureText,
                textAlign: TextAlign.left,
                style: TextStyle(fontFamily: "Tahoma", fontSize: 24),
                softWrap: true,
              )),
          const Spacer(flex: 1),
          Expanded(
              flex: 5,
              child: Image.asset(
                "imgs/nature0.jpg",
                alignment: Alignment.center,
                fit: BoxFit.cover,
              )),
          //const Spacer(flex: 1),
        ]));
  }
}

class NatureMobileView extends StatelessWidget {
  const NatureMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.purple.shade100, //Colors.amber.shade200,
        child: Column(children: [
          Image.asset(
            "imgs/nature0.jpg",
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
          const Text(
            natureText,
            textAlign: TextAlign.left,
            style: TextStyle(fontFamily: "Tahoma", fontSize: 24),
            softWrap: true,
          ),
        ]));
  }
}
