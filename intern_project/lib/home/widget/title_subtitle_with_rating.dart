import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intern_project/model/course.dart';
import 'package:intern_project/util/style.dart';

class TitleAndSubtitleWithRating extends StatelessWidget {
  const TitleAndSubtitleWithRating({
    super.key,
    required this.courseItem,
  });

  final CourseData? courseItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          courseItem?.title ?? '',
          style: fontRegularBoldwithGreyColor,
        ),
        const SizedBox(
          height: 15,
        ),
        Wrap(
          children: [
            Text(
              courseItem?.subTitle ?? '',
              style: fontsmallWithGreyColor,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              "5.0",
              style: fontMediumBold,
            ),
            const SizedBox(
              width: 2,
            ),
            IconButton(
              onPressed: null,
              icon: SvgPicture.asset(
                "assets/icons/star.svg",
                width: 138,
                height: 12,
              ),
            ),
            Text(
              '(25,00)',
              style: fontSmall,
            ),
          ],
        ),
      ],
    );
  }
}
