import 'package:flutter/material.dart';
import 'package:tamyr_profile/constanta.dart';

class EditNameWidget extends StatelessWidget {
  const EditNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffECECEC),
          borderRadius: BorderRadius.circular(10)),
      child: const Padding(
        padding: EdgeInsets.only(top: 15, bottom: 15, right: 50, left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "ФИО (нажмите, чтобы редактировать)",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
            ),
            Divider(
              thickness: 2,
              endIndent: 230,
              color: scaffoldColor,
            ),
            SizedBox(
              height: 3,
            ),
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Фамилия Имя Отчество',
              ),
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}

class EditNumberWidget extends StatelessWidget {
  const EditNumberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffECECEC),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Padding(
        padding: EdgeInsets.only(top: 15, bottom: 15, right: 50, left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Номер телефона",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
            ),
            Divider(
              thickness: 2,
              endIndent: 230,
              color: Color(0xff88226B),
            ),
            SizedBox(
              height: 2,
            ),
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(Icons.call),
                hintText: '+92 1234567890',
              ),
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
