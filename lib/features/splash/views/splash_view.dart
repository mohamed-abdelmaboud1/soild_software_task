import 'package:flutter/material.dart';
import 'package:gap/gap.dart' show Gap;
import 'package:go_router/go_router.dart';

import '../../../core/utils/app_router.dart';
import '../../../core/widgets/app_en_name.dart';
import '../widgets/splash_logo.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    );

    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );

    _animationController.forward();

    Future.delayed(const Duration(seconds: 4), _navigateToHome);
  }

  void _navigateToHome() {
    if (mounted) {
      context.go(AppRouter.home);
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SplashLogo(animationController: _opacityAnimation),
            const Gap(10),
            const AppEnName(),
          ],
        ),
      ),
    );
  }
}
