// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intern_project/util/style.dart';

class LearningTopic extends StatelessWidget {
  const LearningTopic({
    Key? key,
    required this.learningTopic,
  }) : super(key: key);
  final List<String> learningTopic;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What you’ll learn ",
            style: fontBold,
          ),
          ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: learningTopic.length,
              itemBuilder: (context, index) {
                return topicCard(learningTopic[index]);
              }),
        ],
      ),
    );
  }

  Widget topicCard(String topic) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
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
            child: Text(topic,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xFF333333)),
                )),
          )
        ],
      ),
    );
  }
}
