abstract class StateCounter{
  final int  add;
  final int cal;
StateCounter({this.add = 0, this.cal = 0});
}
class InitialState extends StateCounter{

}

class CounterState extends StateCounter{
  final int  addd;
 CounterState({this.addd =0}):super(add: addd);
}

class CounterCalState extends StateCounter{
   final int call;
  CounterCalState({this.call = 0}): super(cal: call);
}