import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/commons/constants.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/chip.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/platform_app_bar.dart';

@RoutePage()
class StoriesTypeFilterScreen extends StatelessWidget {
  const StoriesTypeFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PlatformAppBar(
        title: Text("Top Stories"),
      ),
      body: Wrap(
        children: Constants.topStoryType
            .map(
              (type) => ChipCustom(
                title: type,
                onTap: () {},
              ),
            )
            .toList(),
      ),
    );
  }
}
