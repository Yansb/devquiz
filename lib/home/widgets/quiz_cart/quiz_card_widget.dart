import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/widget/progressIndicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  final String title;
  final String completed;
  final VoidCallback onTap;
  final double percent;

  const QuizCardWidget(
      {Key? key,
      required this.title,
      required this.completed,
      required this.percent,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              child: Image.asset(AppImages.blocks),
            ),
            SizedBox(
              height: 20,
            ),
            Text(title, style: AppTextStyles.heading15),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    completed,
                    style: AppTextStyles.body11,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: ProgressIndicatorWidget(
                    value: percent,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
