import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soild_software_task/core/enums/snack_bar_type.dart';
import 'package:soild_software_task/core/extensions/show_snack_bar_extension.dart';
import 'package:soild_software_task/core/helper/custom_scroll_behavior.dart';
import 'package:soild_software_task/core/helper/get_random_color.dart';
import 'package:soild_software_task/core/helper/push_with_slide_transition.dart';
import 'package:soild_software_task/core/utils/app_images.dart';
import 'package:soild_software_task/core/utils/app_router.dart';
import 'package:soild_software_task/core/utils/app_styles.dart';
import 'package:soild_software_task/core/widgets/custom_image.dart';

void main() {
  runApp(const ProviderScope(child: MainApplication()));
}

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

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Soild Software Task')),
      body: HomeBody(),
    );
  }
}

class HomeBody extends ConsumerWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        ref.read(randomColorProvider.notifier).state = getRandomColor();
        context.showCustomSnackBar(
          'Color changed!',
          type: SnackBarType.success,
        );
      },
      child: Stack(
        children: const [AnimatedBackground(), LogoOverlay(), CenterButton()],
      ),
    );
  }
}

class AnimatedBackground extends ConsumerWidget {
  const AnimatedBackground({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
      width: double.infinity,
      height: double.infinity,
      color: ref.watch(randomColorProvider),
    );
  }
}

class LogoOverlay extends StatelessWidget {
  const LogoOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.5,
      child: Center(
        child: CustomImage(AppImages.imagesAppLogo, width: 100, height: 100),
      ),
    );
  }
}

class CenterButton extends StatelessWidget {
  const CenterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          pushWithSlideTransition(context, const NextPageView());
        },
        child: Text(
          'Hello there',
          style: AppStyles.bold22(context, color: Colors.white),
        ),
      ),
    );
  }
}

final StateProvider<Color> randomColorProvider = StateProvider<Color>((ref) {
  return getRandomColor();
});

class NextPageView extends ConsumerWidget {
  const NextPageView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Next Page')),
      body: Center(
        child: CustomImage(
          AppImages.imagesAppLogo,
          width: 100,
          height: 100,
          color: ref.watch(randomColorProvider),
        ),
      ),
    );
  }
}
