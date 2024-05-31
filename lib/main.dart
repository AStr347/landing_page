import 'package:flutter/material.dart';
import 'package:landing_page/widgets/bot/widget.dart';
import 'package:landing_page/widgets/feedback/widget.dart';
import 'package:landing_page/widgets/nature/widget.dart';
import 'package:landing_page/widgets/aboutus/widget.dart';
import 'package:landing_page/widgets/ourhelp/widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ermak-n',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void numberSender() {}
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    if (width > 1590) {
      return Scaffold(
        body: ListView(children: [
          FeedBackView(
            width: width,
            height: height,
            title: "Ищите недвижимость в Крыму?",
          ),
          const NatureView(),
          const AboutUsView(),
          const OurHelpView(),
          FeedBackView(
            width: width,
            height: 400,
            title: "Готовы заключить сделку?",
          ),
          const BotView(),
        ]),
      );
    } else {
      return Scaffold(
        body: ListView(children: [
          FeedBackView(
            width: width,
            height: height,
            title: "Ищите недвижимость в Крыму?",
          ),
          const NatureMobileView(),
          const AboutUsMobileView(),
          const OurHelpMobileView(),
          FeedBackView(
            width: width,
            height: 400,
            title: "Готовы заключить сделку?",
          ),
          const BotMobileView(),
        ]),
      );
    }
  }
}
