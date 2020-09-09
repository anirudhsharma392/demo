import 'package:flutter/material.dart';

import '../../style.dart';
import 'app_bar.dart';
import 'chit_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    screenSize = ScreenSize(_size.height, _size.width);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: white,
        child: Icon(
          Icons.add,
          color: black,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [AppBarCustom(), Chits()],
      ),
    );
  }
}

class Chits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: margin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenSize.getHt(5),
              ),
              Text(
                "TRENDING CHITS",
                style: TextStyle(
                    color: black, fontWeight: FontWeight.w600, fontSize: 15),
              ),
              SizedBox(
                height: 20,
              ),
              ChitCard(),
              SizedBox(
                height: margin,
              ),
              ChitCard(),
              SizedBox(
                height: margin,
              ),
              ChitCard(),
            ],
          ),
        ),
      ),
    );
  }
}
