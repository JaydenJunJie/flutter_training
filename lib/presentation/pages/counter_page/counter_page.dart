import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trinity_lecture_app/bloc/CounterCubit.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/platform_app_bar.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

@RoutePage()
class CounterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: CounterView(),
    );
  }
}

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PlatformAppBar(
        title: Text("Counter App"),
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (BuildContext context, int state) {
            return Text('$state');
          },
        ),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => {context.read<CounterCubit>().increment()},
            child: const Icon(Icons.plus_one, semanticLabel: 'Reset chips'),
          ),
          UIHelper.verticalSpace(10),
          FloatingActionButton(
            onPressed: () => {context.read<CounterCubit>().decrement()},
            child: const Icon(Icons.exposure_minus_1,
                semanticLabel: 'Reset chips'),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
