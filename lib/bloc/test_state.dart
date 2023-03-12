import 'package:asbeza/models/Asbeza.dart';
import 'package:equatable/equatable.dart';

abstract class TestState extends Equatable {}

class TestInitialState extends TestState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class TestLoadingState extends TestState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class TestSuccessState extends TestState {
  List? asbeza;

  TestSuccessState({
      required this.asbeza,}
      );

  @override
  // TODO: implement props
  List<Object> get props => [];
}



class TestFailState extends TestState {
  String message;

  TestFailState(this.message);

  @override
  // TODO: implement props
  List<Object> get props => [];
}
