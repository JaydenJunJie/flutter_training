import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/commons/colors_const.dart';
import 'package:trinity_lecture_app/core/commons/constants.dart';
import 'package:trinity_lecture_app/core/routes/app_router.gr.dart';
import 'package:trinity_lecture_app/presentation/widgets/atoms/text_theme_extension.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/platform_app_bar.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/news_card.dart';

@RoutePage()
class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PlatformAppBar(
        title: Text("Most Popular Articles"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            InkWell(
              onTap: () => {
                context.router.push(const StoriesTypeFilterRoute())
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi There",
                    style: context.textTheme.headlineMedium?.copyWith(
                      color: ColorConstant.primary,
                    ),
                  ),
                  Text(
                    "Please enter your name and email :)",
                    style: context.textTheme.bodySmall?.copyWith(
                      color: ColorConstant.grey,
                    ),
                  )
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () => {
                context.router.push(const PopularArticleRoute())
              },
              child: Text("Go to Categories Section"),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(8),
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  return NewsCard(
                    imgSrc: Constants.dummyImg,
                    title: "asd",
                    desc: "desc",
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
