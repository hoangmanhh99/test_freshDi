import 'package:flutter/material.dart';
import 'package:flutter_application/ui/blocs/auth/auth.dart';
import 'package:flutter_application/utils/app_constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    usernameController.text = '0345678913';
    passwordController.text = 'test2022';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Đăng nhập', style: TextStyle(
                fontSize: 48, fontWeight: FontWeight.bold, color: Colors.green
              ),),
              kSpacingHeight48,
              TextFormField(
                controller: usernameController,
                decoration: const InputDecoration(
                  hintText: 'Username'
                ),
              ),
              kSpacingHeight16,
              TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                    hintText: 'Password'
                ),
              ),
              kSpacingHeight36,
              Container(
                height: 41,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: const LinearGradient(colors: [
                      Color(0xFFFFB62C),
                      Color(0xFFFF872C),
                    ])),
                child: ElevatedButton(
                    onPressed: () async {
                      await context.read<AuthBloc>().login(usernameController.text, passwordController.text);
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        primary: Colors.transparent,
                        maximumSize: const Size(double.infinity, 41),
                        shadowColor: Colors.transparent),
                    child: Text(
                      'Đăng nhập',
                      style: Theme.of(context).textTheme.button,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
