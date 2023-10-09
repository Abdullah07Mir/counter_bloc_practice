

abstract class CounterEvent {
  CounterEvent();
}

class CounterIncrement extends CounterEvent {
  int? incre;
  CounterIncrement({this.incre});

  add_increment(int x) {
    x++;
    incre = x;
    return incre;
  }
}

class CountDecrement extends CounterEvent{
  int? dcre;
  CountDecrement ({this.dcre});

  add_decrement(int y) {
    y--;
    dcre = y;
    return dcre;
  }

}


class Addition extends CounterEvent {
  int? addi;
  Addition({this.addi});

  increment(int a) {
    a++;
    addi = a;
    return addi;
  }
}

class Subtraction extends CounterEvent{
  int? subt;
  Subtraction ({this.subt});

  decrement(int b) {
    b--;
    subt = b;
    return subt;
  }
}