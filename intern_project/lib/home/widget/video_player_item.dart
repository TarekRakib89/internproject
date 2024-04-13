import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intern_project/util/constant.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerItem extends StatefulWidget {
  final String videoUrl;
  const VideoPlayerItem({
    Key? key,
    required this.videoUrl,
  }) : super(key: key);

  @override
  _VideoPlayerItemState createState() => _VideoPlayerItemState();
}

class _VideoPlayerItemState extends State<VideoPlayerItem> {
  late VideoPlayerController controller;
  Widget? controls;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        controller.play();
        controller.setVolume(1);
        setState(() {});
      })
      ..addListener(() {
        if (controller.value.isPlaying) {
          controls = GestureDetector(
            onTap: () {
              setState(() {
                controller.pause();
              });
            },
            child: Image.asset(
              Images.pause,
              height: 50,
            ),
          );
        } else if (controller.value.position.inMilliseconds -
                controller.value.duration.inMilliseconds <
            1) {
          setState(() {
            controls = GestureDetector(
              onTap: () {
                setState(() {
                  controller.play();
                });
              },
              child: SvgPicture.asset(
                Images.playicon,
                height: 50,
              ),
            );
          });
        } else {
          controls = GestureDetector(
            onTap: () {
              setState(() {
                controller.play();
              });
            },
            child: SvgPicture.asset(
              Images.playicon,
              height: 50,
            ),
          );
        }
      });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          width: 345,
          height: 160,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            color: Colors.black,
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            child: VideoPlayer(controller),
          ),
        ),
        Positioned.fill(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              controls ?? Container(),
            ],
          ),
        )
      ],
    );
  }
}
