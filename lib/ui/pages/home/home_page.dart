import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/ui/blocs/auth/auth.dart';
import 'package:flutter_application/ui/blocs/cultivation/cultivation_bloc.dart';
import 'package:flutter_application/ui/blocs/cultivation/cultivation_state.dart';
import 'package:flutter_application/ui/pages/home/add_transaction_page.dart';
import 'package:flutter_application/utils/app_constants.dart';
import 'package:flutter_application/utils/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  static const path = 'HomePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var farmController = TextEditingController();
  var seedController = TextEditingController();
  var subfarmController = TextEditingController();
  var certController = TextEditingController();
  var sizeController = TextEditingController();
  var startEndController = TextEditingController();
  String cultivation = 'FTWZV001080209TA';

  @override
  void initState() {
    super.initState();

    context.read<CultivationBloc>().getProductOfCollection(cultivation);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lô sản xuất',
        ),
        flexibleSpace: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icons/ic_appBar.png'),
                    fit: BoxFit.fill))),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
              onPressed: () async {
                await context.read<AuthBloc>().logout();
              },
              child: Text(
                'Đăng xuất',
                style: Theme.of(context)
                    .textTheme
                    .button!
                    .copyWith(color: Colors.white, fontSize: 12),
              ))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocBuilder<CultivationBloc, CultivationState>(
            builder: (context, state) {
              return state.when((data) {
                farmController.text = data.cul_farm ?? "";
                seedController.text = data.cul_seed ?? "";
                subfarmController.text = data.cul_subfarm ?? "";
                certController.text = data.cul_cert ?? "";
                sizeController.text = (data.cul_harvest_size ?? 0).toString();
                // startEndController.text = data.cul_farm ?? "";
                return Container(
                  margin: const EdgeInsets.fromLTRB(28, 26, 31, 26),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '${data.cul_item}',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Text(
                              'Lô sản phẩm',
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: TextFormField(
                              controller: farmController,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Text(
                              'Loại giống',
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: TextFormField(
                              controller: seedController,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Text(
                              'Địa điểm sản xuất',
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: TextFormField(
                              controller: subfarmController,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Text(
                              'Tiêu chuẩn',
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: TextFormField(
                              controller: certController,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Text(
                              'Khối lượng',
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: TextFormField(
                              controller: sizeController,
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: TextFormField(
                              controller: sizeController,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Text(
                              'NSX - HSD',
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                          ),
                          Expanded(
                              flex: 6,
                              child: TextFormField(
                                controller: sizeController,
                              ))
                        ],
                      ),
                      kSpacingHeight32,
                      Row(
                        children: [
                          Text(
                            'Hành trình sản phẩm',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ],
                      ),
                      kSpacingHeight24,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Giao dịch',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)),
                          Container(
                            height: 26,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                gradient: const LinearGradient(colors: [
                                  Color(0xFFFFB62C),
                                  Color(0xFFFF872C),
                                ])),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, AddTransactionPage.path,
                                      arguments: cultivation);
                                },
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    primary: Colors.transparent,
                                    shadowColor: Colors.transparent),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/ic_add.svg',
                                      width: 16,
                                    ),
                                    kSpacingWidth4,
                                    Text(
                                      'Thêm giao dịch',
                                      style: Theme.of(context)
                                          .textTheme
                                          .button!
                                          .copyWith(fontSize: 10),
                                    )
                                  ],
                                )),
                          )
                        ],
                      ),
                      kSpacingHeight24,
                      if (data.cul_transaction != null)
                        Column(
                          children: List.generate(data.cul_transaction!.length,
                              (index) {
                            return Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      color: const Color(0xFFE0E0E0))),
                              padding: const EdgeInsets.all(24),
                              margin: const EdgeInsets.only(bottom: 12),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Giao dịch ${index + 1}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6!
                                              .copyWith(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                  kSpacingHeight16,
                                  const Divider(
                                    color: Color(0xFFE0E0E0),
                                    thickness: 1,
                                  ),
                                  kSpacingHeight16,
                                  _buildRow(
                                      title: 'Loại giao dịch',
                                      content: data
                                          .cul_transaction![index].trans_type),
                                  kSpacingHeight16,
                                  _buildRow(
                                      title: 'Thời gian',
                                      content: data
                                          .cul_transaction![index].trans_date),
                                  kSpacingHeight16,
                                  _buildRow(
                                      title: 'Khối lượng',
                                      content:
                                          '${data.cul_transaction![index].trans_quantity} ${data.cul_transaction![index].trans_uom}'),
                                  kSpacingHeight16,
                                  _buildRow(
                                      title: 'Mô tả',
                                      content: data.cul_transaction![index]
                                          .trans_description,
                                      maxLines: 2),
                                  kSpacingHeight16,
                                ],
                              ),
                            );
                          }),
                        )
                    ],
                  ),
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
        ),
      ),
    );
  }

  Widget _buildRow(
      {required String title, required String content, int maxLines = 1}) {
    return Row(
      children: [
        Expanded(
            child: Text(title,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontSize: 16, color: ColorConstants.textGray3Color))),
        Expanded(
            child: Text(content,
                maxLines: maxLines,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontSize: 16,
                    )))
      ],
    );
  }
}
