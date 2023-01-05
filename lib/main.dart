import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:routing/cubits/cubit/login_cubit.dart';

import 'config/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Builder(builder: (context) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: "Go Router",
          routerConfig: AppRouter(context.read<LoginCubit>()).router,
          // home: const CategoryScreen(),
        );
      }),
    );
  }
}
