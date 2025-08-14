import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soild_software_task/core/helper/custom_scroll_behavior.dart';
import 'package:soild_software_task/core/utils/app_router.dart';

class MainApplication extends StatelessWidget {
  const MainApplication({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DevicePreview(
      enabled: !kReleaseMode && true,
      builder: (context) => ScreenUtilInit(
        designSize: const Size(412, 892),
        fontSizeResolver: (fontSize, scaleFactor) {
          // Clamp the scale factor between 0.8 and 1.2
          double clampedScaleFactor = scaleFactor.scaleText.clamp(0.8, 1.2);
          return fontSize * clampedScaleFactor;
        },
        enableScaleWH: () => false,
        useInheritedMediaQuery: true,
        builder: (context, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Soild Software Task',
            routerConfig: AppRouter.router,
            builder: DevicePreview.appBuilder,
            scrollBehavior: CustomScrollBehavior(),

            themeMode: ThemeMode.light,
          );
        },
      ),
    );
  }
}
