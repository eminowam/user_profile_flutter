import 'package:flutter/material.dart';
import 'package:tamyr_profile/widget/about.dart';
import 'package:tamyr_profile/widget/edit/messenger_edit.dart';
import 'package:tamyr_profile/widget/edit/name_edit.dart';
import 'package:flutter/cupertino.dart';

class EditUserInfo extends StatelessWidget {
  const EditUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: SingleChildScrollView(
        child:  Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                  "https://thumbs.dreamstime.com/b/asian-beauty-animation-portrait-beautiful-girl-ancient-national-turban-married-woman-s-headdress-central-asia-vector-167032286.jpg"),
            ),
            SizedBox(height: 20),
            EditNameWidget(),
            SizedBox(height: 20),
            EditNumberWidget(),
            SizedBox(height: 20),
            MessengersEdit(),
            SizedBox(height: 20),
            AboutMeColumn(),
          ],
        ),
      ),
    );
  }
}
