import 'package:flutter/material.dart';

class TitleModelIcon {
  final IconData icon;
  final String text;

  TitleModelIcon(this.icon, this.text);
}

class MessengersEdit extends StatelessWidget {
  MessengersEdit({super.key});

  var title = TitleModelIcon(Icons.abc, "test");

  List<TitleModelIcon> titles = [
    TitleModelIcon(Icons.message, "Введите ссылку на WhatsApp"),
    TitleModelIcon(Icons.abc, "Введите ссылку на Instagram"),
    TitleModelIcon(Icons.telegram, "Введите ссылку на Telegram"),
  ];

  @override
  Widget build(BuildContext context) {
    return  Column(
              children: [
            ...titles.map((e) => _MessengersEdit(
                  icon: e.icon,
                  text: e.text,
                )),
          ]
      );
  }
}

class _MessengersEdit extends StatelessWidget {
  const _MessengersEdit({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
        return Container(
          margin: EdgeInsets.only(top: 4,bottom: 8),
            decoration: BoxDecoration(
            color: const Color(0xffECECEC),
    borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
    padding: EdgeInsets.only(top: 6, bottom: 4, right: 12, left: 11),
              child: TextField(
                decoration: InputDecoration(
                 border: InputBorder.none,
                  icon: Icon(icon),
                  hintText: text,
                ),
                style: const TextStyle(fontSize: 14),
              ),
    ),
        );
  }
}
