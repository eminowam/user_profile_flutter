import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:tamyr_profile/widget/profile/edit_user_info.dart';
import 'package:tamyr_profile/screen/finish_edit.dart';

class ChangeProf extends StatelessWidget {
  const ChangeProf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          "Редактирование",
          style: TextStyle(
            fontSize: 20,
            color: Color(0xff333A53),
          ),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (_) => FinishEditProfile()));
              },
              icon: const Icon(
                Icons.done,
                color: Colors.green,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: const Padding(
          padding: EdgeInsets.only(left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              EditUserInfo()
            ],
          ),
        ),
      ),
    );
  }
}
