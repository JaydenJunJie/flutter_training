import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/commons/colors_const.dart';
import 'package:trinity_lecture_app/core/routes/app_router.gr.dart';
import 'package:trinity_lecture_app/presentation/widgets/atoms/text_theme_extension.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

class MainListItemCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final int index;

  const MainListItemCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        switch (index) {
          case 0:
            context.router.push(const DummyUIMainRoute());
            break;
          case 1:
            context.router.push(const CounterRoute());
            break;
          case 2:
            context.router.push(const SimpleCalculatorRoute());
            break;
          case 3:
            context.router.push(const NewsRoute());
            break;
          case 4:
            context.router.push(const InputValidationRoute());
            break;
        }
      },
      child: Container(
        padding: UIHelper.padding(vertical: 10, horizontal: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: context.textTheme.headlineLarge
                        ?.copyWith(color: ColorConstant.primary),
                  ),
                  Text(
                    subtitle,
                    style: context.textTheme.bodySmall,
                  )
                ],
              ),
            ),
            Text("Arrow")
          ],
        ),
      ),
    );
  }
}
