import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/chip.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/platform_app_bar.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/text_form_field.dart';

@RoutePage()
class SimpleCalculatorPage extends StatelessWidget {
  const SimpleCalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PlatformAppBar(
        title: Text("Simple Calculator"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Wrap(
              children: [
                ChipCustom(
                  title: 'Testing',
                  onTap: () {},
                ),
                ChipCustom(
                  title: 'Testing',
                  onTap: () {},
                ),
                ChipCustom(
                  title: 'Testing',
                  onTap: () {},
                ),
                ChipCustom(
                  title: 'Testing',
                  onTap: () {},
                ),
                ChipCustom(
                  title: 'Testing',
                  onTap: () {},
                ),
              ],
            ),
            const Row(
              children: [
                Expanded(
                  flex: 1,
                  child: TextFormFieldCustom(),
                ),
                Expanded(
                  flex: 1,
                  child: Text("+"),
                ),
                Expanded(
                  flex: 1,
                  child: TextFormFieldCustom(),
                ),
                Expanded(
                  flex: 1,
                  child: Text("= ..."),
                ),
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('CALCULATE'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
