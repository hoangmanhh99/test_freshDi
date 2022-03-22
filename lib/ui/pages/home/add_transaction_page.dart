import 'package:flutter/material.dart';
import 'package:flutter_application/ui/blocs/cultivation/cultivation_bloc.dart';
import 'package:flutter_application/utils/app_constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:developer' as developer;

class AddTransactionPage extends StatefulWidget {
  static const path = 'AddTransactionPage';
  const AddTransactionPage(this.transCultivation, {Key? key}) : super(key: key);
  final String transCultivation;

  @override
  State<AddTransactionPage> createState() => _AddTransactionPageState();
}

class _AddTransactionPageState extends State<AddTransactionPage> {
  var typeController = TextEditingController();
  var timeController = TextEditingController();
  var quantityController = TextEditingController();
  var desController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Thêm giao dịch',
        ),
        flexibleSpace: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icons/ic_appBar.png'),
                    fit: BoxFit.fill))),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.fromLTRB(26, 26, 33, 26),
          child: Column(
            children: [
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Loại giao dịch',
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: typeController,
                    ),
                  )
                ],
              ),
              kSpacingHeight8,
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Thời gian',
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: timeController,
                    ),
                  )
                ],
              ),
              kSpacingHeight8,
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Khối lượng',
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: quantityController,
                    ),
                  )
                ],
              ),
              kSpacingHeight12,
              Row(
                children: [
                  Text(
                    'Mô tả',
                  ),
                ],
              ),
              kSpacingHeight4,
              TextFormField(
                controller: desController,
                maxLines: 5,
                decoration: InputDecoration(
                    hintText:
                        'Thêm mô tả chi tiết (nếu có) cho giao dịch của bạn '),
                // expands: true,
              ),
              const SizedBox(
                height: 28,
              ),
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
                      await context
                          .read<CultivationBloc>()
                          .updateCultivation(
                              transCultivation: widget.transCultivation,
                              transType: typeController.text,
                              transDate: timeController.text,
                              transQuantity:
                                  double.parse(quantityController.text),
                              transUom: 'Kg',
                              transDescription: desController.text)
                          .then((value) {
                        Navigator.pop(context);
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        primary: Colors.transparent,
                        maximumSize: const Size(double.infinity, 41),
                        shadowColor: Colors.transparent),
                    child: Text(
                      'Lưu',
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
