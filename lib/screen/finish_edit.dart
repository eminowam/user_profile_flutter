import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:tamyr_profile/screen/profile/user_profile.dart';


class FinishEditProfile extends StatelessWidget {
  const FinishEditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
      decoration:  const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff607681),
            Color(0xff333A53),
          ],
            begin:  FractionalOffset(0.0, 0.1),
            end:  FractionalOffset(0.0, 1.0),
            stops: [0.0, 3.0],
            tileMode: TileMode.clamp),),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage('assets/drevo.png'),),
            const SizedBox(
              height: 22,
            ),
            const Text("ОБНОВЛЕНИЕ ЗАВЕРШЕНО",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600)),
            const SizedBox(
              height: 41,
            ),
            SizedBox(
                width: 257, // <-- Your width
                height: 48,
                child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Color(0xff738CAB))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (_) => const UserProfile()));
                    },
                    child: Text("Вернуться"))),
          ],
        ),
      ),
    );
  }
}
