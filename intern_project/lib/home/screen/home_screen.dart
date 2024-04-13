import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intern_project/home/controller/home_controller.dart';
import 'package:intern_project/home/widget/app_bar_item.dart';
import 'package:intern_project/home/widget/course_curriculam.dart';
import 'package:intern_project/home/widget/course_fees_with_button.dart';
import 'package:intern_project/home/widget/included_features.dart';
import 'package:intern_project/home/widget/intro_video_with_thumbnai.dart';
import 'package:intern_project/home/widget/learning_topic.dart';
import 'package:intern_project/home/widget/requirement_description.dart';
import 'package:intern_project/home/widget/title_subtitle_with_rating.dart';
import 'package:intern_project/model/course.dart';
import 'package:intern_project/util/constant.dart';
import 'package:intern_project/util/style.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool videorunning = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Get.find<HomeController>().getRequest();
    });
  }

  // getData() async {
  //   await controller.getRequest();
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetBuilder<HomeController>(
      builder: (controller) {
        CourseData? courseItem = controller.courseModel.data;
        var inputFormat = DateFormat("'yyyy-MM-ddThh:mm:ss");
        var inputDate = inputFormat.parse(courseItem?.updatedAt ?? "");
        var outputFormat = DateFormat('MM/yyyy');
        var date = outputFormat.format(inputDate);

        return Scaffold(
          body: SingleChildScrollView(
            child: courseItem != null
                ? Column(
                    children: <Widget>[
                      SizedBox(
                        height: size.height,
                        child: Stack(
                          children: [
                            const AppBarItem(),
                            bodyWidget(courseItem, date),
                          ],
                        ),
                      ),
                    ],
                  )
                : const CircularProgressIndicator(
                    backgroundColor: Colors.blue,
                  ),
          ),
        );
      },
    );
  }

  Widget bodyWidget(CourseData? courseItem, String date) {
    return Container(
      margin: const EdgeInsets.only(
        top: 86,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (courseItem?.thumb != null)
                  InTroVideoWiththumbnail(
                    video: courseItem?.videoLinkPath ?? '',
                    thumb: courseItem?.thumb ?? '',
                  ),
                const SizedBox(
                  height: 54,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleAndSubtitleWithRating(
                      courseItem: courseItem,
                    ),
                    const SizedBox(height: 6),
                    Text('9,591 students', style: fontSmallWithHeight4),
                    RichText(
                      text: TextSpan(
                        text: 'Mentor ',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            // height: 2,
                            color: Color(0xFF666666),
                          ),
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Ashutosh Pawar',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                // height: 2,
                                color: const Color(0xFF7455F7).withOpacity(0.7),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          Images.appointment,
                          width: 18,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text('Last update $date', style: fontSmallWithHeight4)
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/globe.svg',
                          width: 14,
                          height: 15,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          "JavaScript",
                          style: fontSmallWithHeight4,
                        )
                      ],
                    ),
                    CourseFeesWithButtonWidget(
                      fees: courseItem?.price,
                    ),
                    const SizedBox(height: 20),
                    LearningTopic(
                      learningTopic: courseItem?.learningTopic ?? [],
                    ),
                    const SizedBox(height: 18),
                    Text(
                      "Show More",
                      style: fontszie14,
                    ),
                    const SizedBox(height: 46),
                    CourseCurriculumWidget(
                      courseItem: courseItem,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: null,
                      style: buttonStyle(),
                      child: Text(
                        "16 more sections",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color(0xFF7455F7),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const IncludedFeatures(),
                    const SizedBox(height: 92),
                    RequirementAndDescription(
                      courseItem: courseItem!,
                    ),
                    const SizedBox(height: 18),
                    Text(
                      "Show More",
                      style: fontszie14,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
