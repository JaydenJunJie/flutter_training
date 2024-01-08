import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:trinity_lecture_app/core/commons/constants.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/platform_app_bar.dart';

import '../../widgets/organisms/main_list_item_card.dart';




@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PlatformAppBar(
        title: Text("Choose Section"),
      ),
      body: ListView(
        children: Constants.mainPageList.mapWithIndex((listItem, index) {
          return MainListItemCard(
            title: "${listItem.title} $index",
            subtitle: listItem.subtitle,
            index: index,
          );
        }).toList(),
      ),
    );
  }
}
