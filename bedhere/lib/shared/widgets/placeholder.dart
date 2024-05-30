import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../env/theme/app_theme.dart';

Widget placeHolderWidget({
  required String placeholder,
  Color? color,
  FontWeight? fontWeight,
  double? fontSize = 15.5,
}) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Text(
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      placeholder,
      style: GoogleFonts.roboto(
        color: color ?? AppTheme.textColorPrimary,
        fontWeight: fontWeight ?? FontWeight.bold,
        fontSize: fontSize,
      ),
    ),
  );
}
