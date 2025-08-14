import 'package:flutter/material.dart';
import 'package:soild_software_task/core/helper/push_with_slide_transition.dart';
import 'package:soild_software_task/core/utils/app_styles.dart';
import 'package:soild_software_task/main.dart';
import 'package:soild_software_task/features/home/presentation/views/next_page_view.dart';

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
