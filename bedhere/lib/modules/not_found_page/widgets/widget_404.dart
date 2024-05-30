
import 'package:bedhere/env/theme/app_theme.dart';
import 'package:flutter/material.dart';

@override
Widget drawerWidget404(BuildContext context) {
  final size = MediaQuery.of(context).size;
  

  return Container(
    height: size.height,
    width: size.width,
    color: AppTheme.white,
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //SvgPicture.asset('assets/404.svg'),
          // FilledButtonWidget(
          //   text: 'Regresar',
          //   onPressed: () {
          //     GlobalHelper.navigateToPageRemove(context, '/login');
          //   },
          // )
        ],
      ),
    ),
  );
}