import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:routing/cubits/cubit/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
          backgroundColor: const Color(0xFF000A1F),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
                onPressed: (() {
                  context.go(context.namedLocation('home'));
                }),
                child: const Text("Go to Home")),
            SizedBox(
              height: 5.0,
            ),
            ElevatedButton(
                onPressed: () {
                  context.read<LoginCubit>().login();
                },
                child: const Text("Login")),
          ]),
        ));
  }
}
