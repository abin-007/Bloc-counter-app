part of "counter_bloc.dart";

sealed  class CounterEvent{}

final class CounterIncrememted  extends CounterEvent{}

final class CounterDecremented extends CounterEvent{}