import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intern_project/util/constant.dart';
import 'package:intern_project/util/style.dart';

class AppBarItem extends StatelessWidget {
  const AppBarItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 121,
      color: const Color(0xFF7455F7),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 42, left: 20, right: 20, bottom: 42),
        child: SizedBox(
          height: 18,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: null,
                icon: SvgPicture.asset(
                  Images.alignleft,
                  width: 18,
                  height: 12,
                  color: const Color(0xFFF9F4FF),
                ),
              ),
              Text("Course Details", style: textStyleFontRoboto(18)),
              SvgPicture.asset(
                Images.cart,
                width: 18,
                height: 18,
                color: const Color(0xFFF9F4FF),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
