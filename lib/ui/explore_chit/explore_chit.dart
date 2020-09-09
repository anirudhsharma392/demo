import 'package:flutter/material.dart';
import 'package:money_hook/style.dart';

class ExploreChitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(22),
          child: Column(
            children: [
              ChitCardDetailed(),
            ],
          ),
        ),
      ),
    );
  }
}

class ChitCardDetailed extends StatelessWidget {
  final double _imageRadius = 25;

  Widget avatar(
          {bool isDark = false,
          String image = 'assets/images/sample_person_1.jpg'}) =>
      Column(
        children: [
          Image.asset(
            'assets/images/crown.png',
            color: isDark
                ? Colors.orangeAccent
                : Colors.orangeAccent.withOpacity(0.3),
            height: 20,
          ),
          SizedBox(
            height: 5,
          ),
          CircleAvatar(
            radius: _imageRadius,
            backgroundImage: AssetImage(image),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: margin / 4),
      decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                color: black.withOpacity(.05),
                offset: Offset(0, 1),
                blurRadius: 10,
                spreadRadius: 10)
          ]),
      child: Container(
        margin: EdgeInsets.all(margin),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, boxShadow: [
                        BoxShadow(
                            color: black.withOpacity(.2),
                            offset: Offset(0, 1),
                            blurRadius: 2,
                            spreadRadius: 3)
                      ]),
                      child: CircleAvatar(
                        radius: 14,
                        backgroundColor: white,
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: themeColor,
                          child: Icon(
                            Icons.attach_money,
                            size: 24,
                            color: white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "25,000",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                Text(
                  "0/10 Months",
                  style: TextStyle(fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: margin,
            ),
            Text(
              "Rs 2500/- amount you wish to contribute for 10 month.",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: margin,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Next Bid: 26-Jul-2020",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "00:00:00:00",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                      color: themeColor,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.file_download,
                        color: white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Invoice",
                        style: TextStyle(
                            color: white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: margin,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                avatar(
                    image: 'assets/images/sample_person_1.jpg', isDark: true),
                avatar(
                    image: 'assets/images/sample_person_2.jpg', isDark: true),
                avatar(image: 'assets/images/sample_person_3.jpeg'),
                avatar(image: 'assets/images/sample_person_4.jpg'),
                avatar(image: 'assets/images/sample_person_5.jpeg'),
              ],
            ),
            SizedBox(
              height: margin,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                avatar(image: 'assets/images/sample_person_4.jpg'),
                avatar(image: 'assets/images/sample_person_6.png'),
                avatar(image: 'assets/images/sample_person_2.jpg'),
                avatar(image: 'assets/images/sample_person_1.jpg'),
                avatar(image: 'assets/images/sample_person_3.jpeg'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
