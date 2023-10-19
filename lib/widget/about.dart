import 'package:flutter/material.dart';

class AboutMeColumn extends StatelessWidget {
  const AboutMeColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Container(
          decoration: BoxDecoration(
              color: Color(0xffECECEC),
              borderRadius: BorderRadius.circular(10)),
          child: const SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding:
                  EdgeInsets.only(top: 15, bottom: 15, right: 25, left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Обо мне",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff333A53),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    endIndent: 250,
                    color: Color(0xff88226B),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Оповеще нияОповеще нияОпов ещенияОповещ "
                    "енияОповещения Оповещ енияОповещ енияОп "
                    "овещени яОпове щенияОпове щения енияОп овещени "
                    "яОпОпове щенияОпоове.",
                    style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w400, height: 1.5),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
