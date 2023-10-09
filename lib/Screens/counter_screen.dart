import 'package:counter_app_bloc/Screens/bloc/counter_bloc.dart';
import 'package:counter_app_bloc/Screens/bloc/counter_event.dart';
import 'package:counter_app_bloc/Screens/bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<CounterBloc, StateCounter>(
          builder: (context, state) {
            
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                Text('increment : ${state.add}', style: TextStyle(fontSize: 18),),
                SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton( 
                            onPressed: () {
                              BlocProvider.of<CounterBloc>(context)
                                  .add(CountDecrement(dcre: state.add));
                            },
                            child: Text('Minus')),
                        ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterBloc>(context)
                                  .add(CounterIncrement(incre: state.add));
                            },
                            child: Text('Plus')),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 40,),
                Column(
                  children: [
                  Text('calculation : ${state.cal}', style: TextStyle(fontSize: 18),),
                SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterBloc>(context)
                                  .add(Subtraction(subt: state.cal));
                            },
                            child: Text('Minus')),
                        ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterBloc>(context)
                                  .add(Addition(addi: state.cal));
                            },
                            child: Text('Plus')),
                      ],
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
