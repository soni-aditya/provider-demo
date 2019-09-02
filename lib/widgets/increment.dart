import 'package:flutter/material.dart';
import 'package:flutter_provider_test/blocs/counter_bloc.dart';
import 'package:provider/provider.dart';

class IncrementButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);
    return IconButton(
      onPressed: () {
        counterBloc.increment();
      },
      icon: Icon(Icons.add),
    );
  }
}
