// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseFeesWithButtonWidget extends StatelessWidget {
  const CourseFeesWithButtonWidget({
    Key? key,
    required this.fees,
  }) : super(key: key);
  final double? fees;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345,
      height: 140,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            fees.toString(),
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Color(0xFF666666),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: null,

            style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(
                Color(0xFF7455F7),
              ),
              minimumSize: const MaterialStatePropertyAll(
                Size(345, 46),
              ),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),

            // ),
            child: Text(
              "Buy now",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                  onPressed: null,
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 1, color: Color(0xFF7455F7)),
                    minimumSize: const Size(165, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: Text(
                    "Add to cart",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color(0xFF7455F7),
                      ),
                    ),
                  )),
              ElevatedButton(
                  onPressed: null,
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 1, color: Color(0xFF7455F7)),
                    minimumSize: const Size(165, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: Text(
                    "Add to wishlist",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color(0xFF7455F7),
                      ),
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
