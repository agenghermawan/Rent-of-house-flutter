import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:supercharged/supercharged.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingStars extends StatelessWidget {
  final double rate;
  RatingStars(this.rate);

  @override
  Widget build(BuildContext context) {
    int numberOfStars = rate.round();

    return Row(
        children: List<Widget>.generate(
              5,
              (index) => Icon(
                (index < numberOfStars) ? MdiIcons.star : MdiIcons.starOutline,
                size: 16,
                color: "FFCA0C".toColor(),
              ),
            ) +
            [
              SizedBox(
                width: 4,
              ),
              Text(
                rate.toString(),
                style: GoogleFonts.poppins(color: Colors.black, fontSize: 12),
              )
            ]);
  }
}
