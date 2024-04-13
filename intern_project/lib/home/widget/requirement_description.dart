import 'package:flutter/material.dart';
import 'package:intern_project/model/course.dart';
import 'package:intern_project/util/style.dart';

class RequirementAndDescription extends StatelessWidget {
  const RequirementAndDescription({
    super.key,
    required this.courseItem,
  });

  final CourseData courseItem;

  @override
  Widget build(BuildContext context) {
    late String firstHalf;
    late String secondHalf;
    double textHeight = 200;
    if (courseItem.description!.length > textHeight) {
      firstHalf = courseItem.description!.substring(0, textHeight.toInt());
      secondHalf = courseItem.description!
          .substring(textHeight.toInt() + 1, courseItem.description!.length);
    } else {
      firstHalf = courseItem.description!;
      secondHalf = "";
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Requirements", style: fontBold),
        const SizedBox(height: 24),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Image.asset(
                'assets/images/Ellipse.png',
                height: 5,
                width: 5,
                color: const Color(0xFF7455F7),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Text(
                courseItem.requirements ?? "",
                style: greyColorSize12,
              ),
            )
          ],
        ),
        const SizedBox(height: 32),
        Text("Description", style: fontBold),
        const SizedBox(height: 15),
        Wrap(
          children: [
            Text(
              firstHalf,
              style: geryFontszie14,
            ),
            const SizedBox(
              height: 100,
            ),
            Text(
              secondHalf,
              style: geryFontszie14,
            ),
          ],
        )
      ],
    );
  }
}
