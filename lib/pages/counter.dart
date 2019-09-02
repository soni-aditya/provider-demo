import 'package:flutter/material.dart';
import 'package:flutter_provider_test/blocs/counter_bloc.dart';
import 'package:flutter_provider_test/widgets/decrement.dart';
import 'package:flutter_provider_test/widgets/increment.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              counterBloc.counter.toString(),
            ),
            IncrementButton(),
            DecrementButton(),
          ],
        ),
      ),
    );
  }
}
