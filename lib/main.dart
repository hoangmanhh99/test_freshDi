
import 'dart:io';

import 'package:auth_nav/auth_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/initialize_dependencies.dart';
import 'package:flutter_application/ui/blocs/blocs.dart';
import 'package:flutter_application/ui/blocs/cultivation/cultivation_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'application.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDependencies();
  // HttpOverrides.global = new MyHttpOverrides();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider.value(value: GetIt.instance.get<AuthNavigationBloc>()),
      BlocProvider.value(value: GetIt.instance.get<AuthBloc>()),
      BlocProvider(create: (context) {
        final cubit = CultivationBloc();
        GetIt.instance.registerSingleton(cubit);
        return cubit;
      }),
    ],
    child: const Application(),
  ));
}

// class MyHttpOverrides extends HttpOverrides{
//   @override
//   HttpClient createHttpClient(SecurityContext context){
//     return super.createHttpClient(context)
//       ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
//   }
// }
