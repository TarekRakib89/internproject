import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intern_project/home/controller/home_controller.dart';
import 'package:intern_project/model/course.dart';
import 'package:intern_project/util/constant.dart';
import 'package:intern_project/util/style.dart';

class CourseCurriculumWidget extends StatelessWidget {
  const CourseCurriculumWidget({
    super.key,
    required this.courseItem,
  });

  final CourseData? courseItem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Course Curriculum",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: AppColor.grayColor,
              ),
            ),
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: courseItem?.sections?.length,
                itemBuilder: (context, index) {
                  return sectionList(index);
                }),
          ),
        ],
      ),
    );
  }

  Widget sectionList(
    int index,
  ) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15),
      child: GetBuilder<HomeController>(builder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(courseItem?.sections?[index].topic ?? '',
                    style: controller.flag[index] == true
                        ? fontRobotoWithBlue
                        : fontRobotoWithGrey),
                IconButton(
                  onPressed: () {
                    Get.find<HomeController>().onTap(index);
                  },
                  icon: controller.flag[index] == true
                      ? SvgPicture.asset(
                          Images.chevrondown,
                          width: 9,
                          height: 7,
                          color: AppColor.primaryColor,
                        )
                      : SvgPicture.asset(
                          Images.chevronup,
                          width: 9,
                          height: 7,
                          color: AppColor.garyColor40,
                        ),
                )
              ],
            ),
            controller.flag[index] == true
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (int i = 0;
                          i < courseItem!.sections![index].lessons!.length;
                          i++)
                        Text(courseItem
                                ?.sections?[index].lessons?[i].lectureTitle ??
                            "")
                    ],
                  )
                : Container(),
          ],
        );
      }),
    );
  }
}
