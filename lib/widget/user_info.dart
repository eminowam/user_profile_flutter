import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      child: const Column(
        children: [
          SizedBox(height: 30),
          CircleAvatar(
            radius: 60,
            backgroundImage:
          NetworkImage
              ("https://thumbs.dreamstime.com/b/asian-beauty-animation-portrait-beautiful-girl-ancient-national-turban-married-woman-s-headdress-central-asia-vector-167032286.jpg"),
          ),
          SizedBox(height: 20,),
          Text(
            "Фамилия Имя Отчество",
            style: TextStyle(color: Color(0xff333A53),
              fontSize: 16,
              fontWeight: FontWeight.w600),),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment : MainAxisAlignment.center ,
            children: [
              Icon(Icons.call),
              SizedBox(width: 7,),
              Text("+92 1234567890",
              style: TextStyle(color: Color(0xff333A53),
              fontSize: 13.21,
              fontWeight: FontWeight.w400),)
            ],
          ),

          // Image(image: AssetImage('assets/drevo.png'),),
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/vector.png')),
              SizedBox(width: 35,),
              Image(image: AssetImage('assets/instagram.png')),
              SizedBox(width: 30,),
              Image(image: AssetImage('assets/telegram.png')),
            ],
          )
        ],

      ),
    );
  }
}
