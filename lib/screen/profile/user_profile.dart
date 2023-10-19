import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tamyr_profile/screen/profile/edit.dart';
import 'package:tamyr_profile/widget/about.dart';
import 'package:tamyr_profile/widget/notification/notification.dart';
import 'package:tamyr_profile/widget/reviews/review.dart';
import 'package:tamyr_profile/widget/user_info.dart';

import '../errors/error_404.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Мой профиль",
          style: TextStyle(
            color: Color(0xff333A53),
          ),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context, CupertinoPageRoute(builder: (_) => ChangeProf()));
              },
              icon: const Icon(
                Icons.drive_file_rename_outline,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              UserInfo(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Color(0xff333A53),
                      textStyle: const TextStyle(fontSize: 15),
                    ),
                    onPressed: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: const Text('Информация'),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Color(0xff333A53),
                      textStyle: const TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: const Text('Оповещения'),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Color(0xff333A53),
                      textStyle: const TextStyle(fontSize: 15),
                    ),
                    onPressed: () {
                      setState(() {
                        index = 2;
                      });
                    },
                    child: const Text('Отзывы'),
                  ),
                ],
              ),
              Visibility(
                visible: index == 0,
                child: AboutMeColumn(),
              ),
              Visibility(visible: index == 1, child: NotificationWidget()),
              Visibility(visible: index == 2, child: ReviewWidget()),
              SizedBox(
                height: 45,
              ),
              SizedBox(
                  width: 257, // <-- Your width
                  height: 48,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: Color(0xff738CAB)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (_) => const Error404()));
                      },
                      child: Text("Go Errors"))),
            ],
          ),
        ),
      ),
    );
  }
}
