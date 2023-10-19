import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tamyr_profile/screen/profile/user_profile.dart';

class NoProfileScreen extends StatelessWidget {
  const NoProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "TAMYR",
          style: TextStyle(
            color: Color(0xff333A53),
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/no_profile.png')),
            SizedBox(
              height: 22,
            ),
            Text(
              textAlign: TextAlign.center,
              "К сожалению, по Вашим запросам нет анкет",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 11,
            ),
            SizedBox(
              width: 257, // <-- Your width
              height: 48,
              child: Text(
                textAlign: TextAlign.center,
                "Попробуйте проверить правильность введения "
                    "ФИО или изменить фильтры",
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w300, height: 1),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            SizedBox(
                width: 257, // <-- Your width
                height: 48,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                        backgroundColor:
                       Color(0xff738CAB)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (_) => const UserProfile()));
                    },
                    child: Text("Изменить фильтры"))),
          ],
        ),
      ),
    );
  }
}
