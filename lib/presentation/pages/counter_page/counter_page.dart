import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/platform_app_bar.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

@RoutePage()
class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PlatformAppBar(
        title: Text("Counter App"),
      ),
      body: Center(
        child: Text("0"),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => {},
            child: const Icon(Icons.plus_one, semanticLabel: 'Reset chips'),
          ),
          UIHelper.verticalSpace(10),
          FloatingActionButton(
            onPressed: () => {},
            child: const Icon(Icons.exposure_minus_1,
                semanticLabel: 'Reset chips'),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
