import 'package:flutter/material.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Оставьте свой отзыв",
              style: TextStyle(
                fontSize: 15,
                color: Color(0xff333A53),
                fontWeight: FontWeight.w600,
              ),
            ),
            const Divider(
              thickness: 2,
              endIndent: 280,
              color: Color(0xff88226B),
            ),
            const SizedBox(height: 15),
            TextFormField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff808080)),
                      borderRadius: BorderRadius.circular(19)),
                  hintText: "Введите ",
                  suffixIcon: Icon(Icons.send)),
            ),
            SizedBox(
              height: 15,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Все отзывы",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff333A53),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Divider(
                  thickness: 2,
                  endIndent: 300,
                  color: Color(0xff88226B),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 26,
                      backgroundImage: NetworkImage(
                          "https://www.shutterstock.com/image-vector/asian-beauty-animation-portrait-beautiful-260nw-1597665298.jpg"),
                    ),
                    SizedBox(width: 8),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Имя Фамилия",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "отзыввотзы вотзывтоым tetet tett \ntets tetts tetst s ",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                height: 1.5),
                          ),
                        ]),
                  ],
                ),
                SizedBox(height: 16,),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 26,
                      backgroundImage: NetworkImage(
                          "https://www.shutterstock.com/shutterstock/photos/1726979104/display_1500/stock-vector-animation-portrait-of-asian-man-warrior-in-a-national-hat-and-clothes-central-asia-vector-1726979104.jpg"),
                    ),
                    SizedBox(width: 8),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Имя Фамилия",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "отзыввотзы вотзывтоым jindflawjepr \ntets tetts tetst sbhefebihbewi \nhbedihqwbydkuchwoduchbsldcjkshj ",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                height: 1.5),
                          ),
                        ]),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
