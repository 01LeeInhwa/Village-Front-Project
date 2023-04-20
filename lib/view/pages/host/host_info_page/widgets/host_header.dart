import 'package:flutter/material.dart';
import 'package:village/core/constants/color.dart';
import 'package:village/core/constants/move.dart';
import 'package:village/core/constants/style.dart';

class HostHeader extends StatelessWidget {
  const HostHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "호스트페이지",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Move.myPage);
                },
                child: Text(
                  "마이 페이지",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: () {
               Navigator.pushNamed(context, Move.hostResitserPlacePage);
              },
              child: Container(
                width: 80,
                height: 30,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  "공간등록",
                  style: mwhite_text,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
