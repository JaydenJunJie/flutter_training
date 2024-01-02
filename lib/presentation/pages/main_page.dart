import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/platform_app_bar.dart';

import '../widgets/organisms/main_list_item_card.dart';


class MainPageListObject {
  final String title;
  final String subtitle;
  MainPageListObject(this.title, this.subtitle);
}

final mainPageList = [
  MainPageListObject('Dummy UI', 'Introducing basic flutter widget UI'),
  MainPageListObject('Counter Example (State Management)', 'Introducting of state management using flutter_block : Level 1'),
  MainPageListObject('Calculator Example (State Management)', 'Flutter state management using flutter_bloc to calculate simple syntax. Level: 3'),
  MainPageListObject('News App', 'API calling using free source from NYTimes'),
  MainPageListObject('To Do App', 'Create a to do list that saved in local storage using hydrated_block: Level 4'),
  MainPageListObject('title', 'subtitle'),
];

List<MainListItemCard> populateMainPageList() {
  var testing = mainPageList.mapWithIndex((listItem, index) {
    return MainListItemCard(
      title: "${listItem.title} ${index}",
      subtitle: listItem.subtitle,
    );
  }).toList();
  return testing;
}

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
        children: populateMainPageList(),
      ),
    );
  }
}
