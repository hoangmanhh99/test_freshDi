import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application/ui/blocs/cultivation/cultivation_bloc.dart';
import 'package:flutter_application/utils/app_constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:developer' as developer;

import 'package:intl/intl.dart';

class AddTransactionPage extends StatefulWidget {
  static const path = 'AddTransactionPage';
  const AddTransactionPage(this.transCultivation, {Key? key}) : super(key: key);
  final String transCultivation;

  @override
  State<AddTransactionPage> createState() => _AddTransactionPageState();
}

class _AddTransactionPageState extends State<AddTransactionPage> {
  final _formKey = GlobalKey<FormState>();
  var typeController = TextEditingController();
  var timeController = TextEditingController();
  var quantityController = TextEditingController();
  var desController = TextEditingController();

  List typeTrans = ['Mua', 'Bán'];
  String? typeSelected;
  String selectedTime = '';
  double heightDropdown = 29;

  @override
  void initState() {
    super.initState();
  }

  Future _selectDate() async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1920),
        lastDate: DateTime(2030));
    if (picked != null) {
      setState(() {
        timeController.text = DateFormat('dd/MM/yyyy').format(picked);
        selectedTime = DateFormat('yyyy-MM-dd').format(picked);
      });
    }
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
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(
                        child: Text(
                          'Loại giao dịch',
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: heightDropdown,
                          child: DropdownButtonFormField<String>(
                            value: typeSelected,
                            hint: const Text('Chọn loại giao dịch'),
                            items: typeTrans.map((e) {
                              return DropdownMenuItem<String>(
                                  value: e, child: Text(e));
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                setState(() {
                                  heightDropdown = 29;
                                });
                                typeSelected = newValue!;
                              });
                            },
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (typeSelected == null) {
                                setState(() {
                                  heightDropdown = 52;
                                });
                                return 'Chọn loại giao dịch';
                              } else {
                                return null;
                              }
                            },
                            icon: const Icon(Icons.keyboard_arrow_down),
                            iconSize: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                  kSpacingHeight8,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(
                        child: Text(
                          'Thời gian',
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            _selectDate();
                            FocusScope.of(context).requestFocus(FocusNode());
                          },
                          child: IgnorePointer(
                            child: TextFormField(
                              controller: timeController,
                              validator: (value) {
                                if (timeController.text == '') {
                                  return 'Chọn thời gian';
                                }
                                return null;
                              },
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                            ),
                          ),
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
                          validator: (value) {
                            if (quantityController.text == '') {
                              return 'Thêm khối lượng';
                            }
                            return null;
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            TextInputFormatter.withFunction(
                                (oldValue, newValue) {
                              return newValue.copyWith(
                                  text: newValue.text.contains('Kg')
                                      ? newValue.text
                                      : '${newValue.text} Kg');
                            })
                          ],
                        ),
                      )
                    ],
                  ),
                  kSpacingHeight12,
                  Row(
                    children: const [
                      Text(
                        'Mô tả',
                      ),
                    ],
                  ),
                  kSpacingHeight4,
                  TextFormField(
                    controller: desController,
                    maxLines: 5,
                    decoration: const InputDecoration(
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
                          if (_formKey.currentState!.validate()) {
                            await context
                                .read<CultivationBloc>()
                                .updateCultivation(
                                    transCultivation: widget.transCultivation,
                                    transType: typeSelected!,
                                    transDate: selectedTime,
                                    transQuantity: double.parse(
                                        quantityController.text
                                            .replaceAll(' Kg', '')),
                                    transUom: 'Kg',
                                    transDescription: desController.text)
                                .then((value) {
                              Navigator.pop(context);
                            });
                          }
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
        ),
      ),
    );
  }
}
