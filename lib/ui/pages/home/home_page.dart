import 'package:flutter/material.dart';
import 'package:flutter_application/ui/blocs/auth/auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lô sản xuất',),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: () async {
            await context.read<AuthBloc>().logout();
          }, child: Text('Đăng xuất'))
        ],
      ),
    );
  }
}
