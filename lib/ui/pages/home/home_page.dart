import 'package:flutter/material.dart';
import 'package:flutter_application/ui/blocs/auth/auth.dart';
import 'package:flutter_application/ui/blocs/cultivation/cultivation_bloc.dart';
import 'package:flutter_application/ui/blocs/cultivation/cultivation_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var farmController = TextEditingController();
  var seedController = TextEditingController();
  var subfarmController = TextEditingController();
  var certController = TextEditingController();
  var startEndController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<CultivationBloc>().getProductOfCollection('FTWZV001080209TA');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lô sản xuất',
        ),
      ),
      body: Column(
        children: [
          BlocBuilder<CultivationBloc, CultivationState>(
            builder: (context, state) {
              return state.when((data) {
                farmController.text = data.cul_farm ?? "";
                seedController.text = data.cul_seed ?? "";
                subfarmController.text = data.cul_subfarm ?? "";
                certController.text = data.cul_cert ?? "";
                // startEndController.text = data.cul_farm ?? "";
                return Column(
                  children: [
                    Text('${data.cul_item}'),
                    Row(
                      children: [
                        Text('Lô sản phẩm',),
                        Expanded(
                          child: TextFormField(
                            controller: farmController,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text('Loại giống',),
                        Expanded(
                          child: TextFormField(
                            controller: seedController,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text('Địa điểm sản xuất',),
                        Expanded(
                          child: TextFormField(
                            controller: subfarmController,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text('Tiêu chuẩn',),
                        Expanded(
                          child: TextFormField(
                            controller: certController,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text('Khối lượng',),

                      ],
                    ),
                    Row(
                      children: [
                        Text('NSX - HSD',),
                      ],
                    ),
                  ],
                );
              }, loading: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }, error: (error) {
                return const Center(
                  child: Text('Không thể tải dữ liệu'),
                );
              });
            },
          ),
          ElevatedButton(onPressed: () async {
            await context.read<AuthBloc>().logout();
          }, child: Text('Đăng xuất'))
        ],
      ),
    );
  }
}
