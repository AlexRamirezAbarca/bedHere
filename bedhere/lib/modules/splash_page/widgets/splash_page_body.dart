import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../env/theme/app_theme.dart';


class SplashPageBody extends StatefulWidget {
  const SplashPageBody({super.key});

  @override
  State<SplashPageBody> createState() => _SplashPageBodyState();
}

class _SplashPageBodyState extends State<SplashPageBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: AppTheme.primaryColor,
        ),
        Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BounceInLeft(
                delay: const Duration(milliseconds: 500),
                child: const Icon(Icons.bed_sharp, color: AppTheme.white,size: 80,),
                ),
              BounceInUp(
                delay: const Duration(milliseconds: 1000),
                child: const Icon(Icons.pool, color: AppTheme.white,size: 80,),
                ),
              BounceInRight(
                delay: const Duration(milliseconds: 1500),
                child: const Icon(Icons.hotel, color: AppTheme.white,size: 80,),
                ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: LinearProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppTheme.white.withOpacity(0.5)),
          ),
        )
      ],
    );
  }
}