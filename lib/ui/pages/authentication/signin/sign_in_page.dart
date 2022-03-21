import 'package:flutter/material.dart';
import 'package:flutter_application/utils/app_constants.dart';

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
              const Text('Sign In', style: TextStyle(
                fontSize: 48, fontWeight: FontWeight.bold, color: Colors.green
              ),),
              kSpacingHeight16,
              TextFormField(
                controller: usernameController,
                decoration: InputDecoration(
                  hintText: 'Username'
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
