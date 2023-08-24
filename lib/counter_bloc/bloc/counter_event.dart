part of 'counter_bloc.dart';

abstract class CounterEvent{}

class CounterDecrement extends CounterEvent{}
class CounterIncrement extends CounterEvent{}