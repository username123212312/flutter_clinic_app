import 'package:flutter_bloc/flutter_bloc.dart';

import '../utils/logger.dart';

class CustomBlocObserver extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    wLog('${bloc.runtimeType} : ${transition.nextState}');
  }
}
