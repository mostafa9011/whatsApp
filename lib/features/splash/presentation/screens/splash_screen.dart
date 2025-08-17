import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/themes/app_theme.dart';
import '../../../../config/themes/assets_manager.dart';
import '../../../../core/extensions/context_extension.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Align(
            child: Image.asset(
              AssetsManager.logo,
              width: 110.w,
              height: 110.h,
            ),
          ),
          const Spacer(),
          Text(
            context.tr.welcomeToWhatsApp,
            style: TextStyles.medium18W500(context).copyWith(
              color: context.colorScheme.primary,
            ),
          ),
          SizedBox(
            height: 33.h,
          ),
        ],
      ),
    );
  }
}
