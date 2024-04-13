// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intern_project/home/widget/video_player_item.dart';
import 'package:intern_project/util/constant.dart';

class InTroVideoWiththumbnail extends StatefulWidget {
  const InTroVideoWiththumbnail({
    Key? key,
    required this.video,
    required this.thumb,
  }) : super(key: key);
  final String video;
  final String thumb;

  @override
  State<InTroVideoWiththumbnail> createState() =>
      _InTroVideoWiththumbnailState();
}

class _InTroVideoWiththumbnailState extends State<InTroVideoWiththumbnail> {
  bool videorunning = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            !videorunning
                ? GestureDetector(
                    onTap: () {
                      videorunning = !videorunning;
                      setState(() {});
                    },
                    child: Container(
                      alignment: Alignment.topRight,
                      margin: const EdgeInsets.only(top: 20),
                      height: 160,
                      width: 345,
                      foregroundDecoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            const Color(0xFF7455F7),
                            const Color(0xFF039D55).withOpacity(0.1),
                          ],
                        ),
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8.0)),
                          child: Image.network(
                            widget.thumb,
                            width: 239.82,
                            height: 160,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  )
                : VideoPlayerItem(
                    videoUrl: widget.video,
                  ),
            if (!videorunning)
              Positioned(
                top: 80,
                left: 160,
                child: GestureDetector(
                  onTap: () {
                    videorunning = !videorunning;
                    setState(() {});
                  },
                  child: SizedBox(
                    child: SvgPicture.asset(
                      Images.playicon,
                      height: 40,
                      width: 40,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
