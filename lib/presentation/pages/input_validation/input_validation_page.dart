import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/commons/colors_const.dart';
import 'package:trinity_lecture_app/presentation/widgets/atoms/text_theme_extension.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/platform_app_bar.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/text_form_field.dart';

@RoutePage()
class InputValidationPage extends StatelessWidget {
  const InputValidationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PlatformAppBar(
        title: Text("Input Validation"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Column(
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
            TextFormFieldCustom(
              title: "Name",
              hintText: "Enter your name",
            ),
            TextFormFieldCustom(
              title: "Email",
              hintText: "Enter your email",
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('SUBMIT'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
