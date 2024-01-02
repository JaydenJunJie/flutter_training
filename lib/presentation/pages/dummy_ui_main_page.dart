import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trinity_lecture_app/core/routes/app_router.gr.dart';
import 'package:trinity_lecture_app/presentation/widgets/atoms/text_theme_extension.dart';

import '../../core/commons/colors_const.dart';
import '../../core/commons/constants.dart';
import '../widgets/molecules/action_text.dart';
import '../widgets/molecules/chip.dart';
import '../widgets/molecules/platform_app_bar.dart';
import '../widgets/molecules/required_text.dart';
import '../widgets/organisms/news_card.dart';
import '../widgets/organisms/news_vertical_card.dart';
import '../widgets/organisms/ui_helper.dart';

@RoutePage()
class DummyUIMainPage extends StatelessWidget {
  const DummyUIMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PlatformAppBar(
        title: Text("Choose Section"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: UIHelper.padding(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ActionText(
                onTap: () {
                  context.router.push(const TabBarRoute());
                },
                title: 'Next',
                desc: 'Tab Bar, GridView, ListView',
              ),
              Text(
                "Header",
                style: context.textTheme.headlineMedium?.copyWith(
                  color: ColorConstant.green,
                ),
              ),
              NewsCard(
                imgSrc: Constants.dummyImg,
                title: "asd",
                desc: "desc",
              ),
              UIHelper.verticalSpace(10),
              Text(
                "Header",
                style: context.textTheme.headlineMedium?.copyWith(
                  color: ColorConstant.green,
                ),
              ),
              NewsCard(
                imgSrc: Constants.dummyImg,
                title: "asd",
                desc: "desc",
              ),
              UIHelper.verticalSpace(10),
              NewsCard(
                imgSrc: Constants.dummyImg,
                title: "asd",
                desc: "desc",
              ),
              UIHelper.verticalSpace(10),
              Text(
                "Header",
                style: context.textTheme.headlineMedium?.copyWith(
                  color: ColorConstant.green,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NewsVertCard(
                    imgSrc: Constants.dummyImg,
                    desc: "desc",
                  ),
                  NewsVertCard(
                    imgSrc: Constants.dummyImg,
                    desc: "desc",
                  ),
                  NewsVertCard(
                    imgSrc: Constants.dummyImg,
                    desc: "desc",
                  ),
                ],
              ),
              UIHelper.verticalSpace(10),
              ChipCustom(
                onTap: () {},
                title: 'SUBMIT',
              ),
              UIHelper.verticalSpace(10),
              Text(
                "Header",
                style: context.textTheme.headlineMedium?.copyWith(
                  color: ColorConstant.green,
                ),
              ),
              RequiredText(title: "Testing"),
              TextFormField(),
              UIHelper.verticalSpace(10),
              Text(
                "Header",
                style: context.textTheme.headlineMedium?.copyWith(
                  color: ColorConstant.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
