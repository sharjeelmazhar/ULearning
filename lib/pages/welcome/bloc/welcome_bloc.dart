import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning/pages/welcome/bloc/welcome_events.dart';
import 'package:ulearning/pages/welcome/bloc/welcome_states.dart';

class AppBlocs extends Bloc<WelcomeEvents, WelcomeStates> {
  AppBlocs() : super(InitState());
}
