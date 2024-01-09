import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/commons/constants.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/platform_app_bar.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/news_card.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

@RoutePage()
class PopularArticleScreen extends StatelessWidget {
  const PopularArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PlatformAppBar(
        title: Text("Choose Section"),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(8),
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return NewsCard(
            imgSrc: Constants.dummyImg,
            title: "asd",
            desc: "desc",
          );
        },
        separatorBuilder: (BuildContext context, int index) =>
            UIHelper.verticalSpace(10),
      ),
    );
  }
}
