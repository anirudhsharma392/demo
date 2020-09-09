import 'package:flutter/material.dart';

import '../../style.dart';

class AppBarCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: themeColor,
      child: Column(
        children: [
          Container(
            margin:
                EdgeInsets.only(top: screenSize.getHt(6), left: 20, right: 20),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 16,
                    backgroundImage:
                        AssetImage('assets/images/sample_person_2.jpg'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 37,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Manish Arya",
                        style: TextStyle(
                            fontSize: 14,
                            color: white,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "manisharya1612@gmail.com",
                        style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.w200,
                            fontSize: 13),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: screenSize.getHt(5),
          ),
          NavigationBarCustom()
        ],
      ),
    );
  }
}

class NavigationBarCustom extends StatelessWidget {
  Widget _icon(IconData icon, String label) => GestureDetector(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 14,
          ),
          child: Column(
            children: [
              CircleAvatar(
                radius: 33,
                backgroundColor: Colors.black.withOpacity(0.13),
                child: CircleAvatar(
                  radius: 26,
                  backgroundColor: white,
                  child: Icon(
                    icon ?? Icons.notifications_none,
                    size: 32,
                    color: Colors.black.withOpacity(0.8),
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Container(
                child: Text(
                  label ?? "",
                  style: TextStyle(
                    color: white,
                    fontSize: 13,
                  ),
                ),
              )
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            _icon(Icons.notifications_none, "Notification"),
            _icon(Icons.attach_money, "Add Money"),
            _icon(Icons.credit_card, "Transfer to Bank"),
            _icon(Icons.print, "Complete KYC"),
            _icon(Icons.add_shopping_cart, "Credit Score"),
            _icon(Icons.mobile_screen_share, "Refer & Earn"),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
