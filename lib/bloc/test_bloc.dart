import 'package:asbeza/models/Asbeza.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../data_provider/apiService.dart';
import 'package:asbeza/bloc/test_bloc.dart';
import 'package:asbeza/bloc/test_event.dart';
import 'package:asbeza/bloc/test_state.dart';



class TestBloc extends Bloc<TestEvent, TestState> {
  final _apiServiceProvider = ApiServiceProvider();
  TestBloc() : super(TestInitialState()) {
    on<GetDataButtonPressed>((event, emit) async {
      emit(TestLoadingState());
      final asbeza = await _apiServiceProvider.fetchAsbeza();
      emit(TestSuccessState(asbeza: [asbeza]));
    });
  }
}

