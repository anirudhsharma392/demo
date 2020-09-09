import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_hook/ui/explore_chit/explore_chit.dart';

import '../../style.dart';

class ChitCard extends StatelessWidget {
  final double _imageRadius = 25;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => ExploreChitPage())),
      child: Container(
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
                              size: 20,
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
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
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
                  CircleAvatar(
                    radius: _imageRadius,
                    backgroundImage:
                        AssetImage('assets/images/sample_person_1.jpg'),
                  ),
                  CircleAvatar(
                    radius: _imageRadius,
                    backgroundImage:
                        AssetImage('assets/images/sample_person_2.jpg'),
                  ),
                  CircleAvatar(
                    radius: _imageRadius,
                    backgroundImage:
                        AssetImage('assets/images/sample_person_3.jpeg'),
                  ),
                  CircleAvatar(
                    radius: _imageRadius,
                    backgroundImage:
                        AssetImage('assets/images/sample_person_5.jpeg'),
                  ),
                  CircleAvatar(
                    radius: _imageRadius,
                    backgroundColor: Colors.black.withOpacity(0.8),
                    child: Text(
                      "+6",
                      style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.w600,
                          fontSize: 17),
                    ),
                  ),
                ],
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
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => ExploreChitPage())),
                    child: Container(
                      width: 130,
                      height: 50,
                      decoration: BoxDecoration(
                          color: themeColor,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          "Explore Now",
                          style: TextStyle(
                              color: white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
