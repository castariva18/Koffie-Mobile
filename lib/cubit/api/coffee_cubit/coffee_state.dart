part of 'coffee_cubit.dart';

abstract class CoffeeState extends Equatable {
  const CoffeeState();

  @override
  List<Object> get props => [];
}

class CoffeeInitial extends CoffeeState {}

class CoffeeLoading extends CoffeeState {}

class CoffeeGetSuccess extends CoffeeState {
  final List<Coffee> result;
  const CoffeeGetSuccess(this.result);
  @override
  List<Object> get props => [result];
}

class CoffeeGetFailed extends CoffeeState {
  final String message;
  const CoffeeGetFailed(this.message);
  @override
  List<Object> get props => [message];
}
