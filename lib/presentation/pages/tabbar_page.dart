import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/news_card.dart';
import 'package:trinity_lecture_app/presentation/widgets/dummy_ui/news_vertical_card.dart';

import 'package:trinity_lecture_app/core/commons/constants.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

@RoutePage()
class TabBarPage extends StatelessWidget {
  const TabBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarExample();
  }
}

class TabBarExample extends StatefulWidget {
  const TabBarExample({super.key});

  @override
  State<TabBarExample> createState() => _TabBarExampleState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _TabBarExampleState extends State<TabBarExample>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabBar Sample'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              text: "ListView",
            ),
            Tab(
              text: "GridView",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          ListView.separated(
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
          GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: List.generate(
              9,
              (index) {
                return NewsVertCard(imgSrc: Constants.dummyImg, desc: "desc");
              },
            ),
          ),
        ],
      ),
    );
  }
}
