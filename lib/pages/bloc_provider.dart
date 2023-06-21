import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pulih_app/pages/welcome/bloc/welcome_blocs.dart';

class AppBlocProviders {
  static get allBlocProviders => [
        BlocProvider(create: (context) => WelcomeBloc()),
      ];
}
