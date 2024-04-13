import 'package:flutter/material.dart';
import 'package:intern_project/util/style.dart';

class IncludedFeatures extends StatelessWidget {
  const IncludedFeatures({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "This course includes",
          style: fontBold,
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Image.asset(
              "assets/images/youtube.png",
              width: 16,
              height: 16,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              "34.5 total hours on- demand vedio",
              style: greyColorSize12,
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Image.asset(
              "assets/images/document.png",
              width: 16,
              height: 16,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              "Support Files",
              style: greyColorSize12,
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Image.asset(
              "assets/images/book.png",
              width: 16,
              height: 16,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              "10 Articles",
              style: greyColorSize12,
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Image.asset(
              "assets/images/infinity.png",
              width: 16,
              height: 16,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              "Full lifetime access",
              style: greyColorSize12,
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Image.asset(
              "assets/images/smartphone.png",
              width: 16,
              height: 16,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              "Access on mobile, desktop, and TV",
              style: greyColorSize12,
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Image.asset(
              "assets/images/certificate.png",
              width: 16,
              height: 16,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              "Certificate of Completion",
              style: greyColorSize12,
            ),
          ],
        ),
      ],
    );
  }
}
