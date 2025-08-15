// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/services.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/utils/utils.dart';
import 'package:our_flutter_clinic_app/core/widgets/widgets.dart';
import 'package:our_flutter_clinic_app/features/auth/view/widgets/auth_widgets.dart';
import 'package:toastification/toastification.dart';

import '../../../../core/utils/decimal_input_formatter.dart';
import '../../controller/my_wallet_cubit/my_wallet_cubit.dart';
import '../../repository/payment_repository.dart';

class ReservationDetaildRechargeWidget extends StatefulWidget {
  const ReservationDetaildRechargeWidget({super.key});

  @override
  State<ReservationDetaildRechargeWidget> createState() =>
      _ReservationDetaildRechargeWidgetState();
}

class _ReservationDetaildRechargeWidgetState
    extends State<ReservationDetaildRechargeWidget> {
  @override
  void initState() {
    _myWalletCubit = MyWalletCubit(paymentRepo: PaymentRepository());
    super.initState();
    _myWalletCubit.fetchWalletRange();
  }

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: BlocConsumer<MyWalletCubit, MyWalletState>(
        listener: (context, state) {
          if (state.status.isError) {
            showToast(
              context: context,
              msg: state.message,
              type: ToastificationType.error,
            );
          }
          if (state.status.isDone) {
            showToast(
              context: context,
              msg: state.message,
              type: ToastificationType.success,
            );
            _myWalletCubit.fetchWalletRange();
          }
        },
        bloc: _myWalletCubit,
        builder: (context, state) {
          return state.status.isLoading
              ? Center(child: CircularProgressIndicator())
              : Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  BlocBuilder<MyWalletCubit, MyWalletState>(
                    bloc: _myWalletCubit,
                    builder: (context, state) {
                      return Text(
                        'My Credit : \$${state.walletRange ?? 0.0}',
                        style: Theme.of(context).textTheme.labelMedium!
                            .copyWith(color: Colors.black, fontSize: 15),
                      );
                    },
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: screenWidth(context) * 0.6,
                    // height: screenHeight(context) * 0.05,
                    child: Form(
                      key: _formKey,
                      child: TextFormField(
                        keyboardType: TextInputType.numberWithOptions(
                          decimal: true,
                        ),
                        inputFormatters: [
                          FilteringTextInputFormatter.singleLineFormatter,
                          DecimalInputFormatter(),
                        ],
                        validator: (value) {
                          if (value!.trim().isEmpty) {
                            return 'Enter a valid amount';
                          } else {
                            return null;
                          }
                        },

                        style: Theme.of(
                          context,
                        ).textTheme.labelMedium!.copyWith(fontSize: 12),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          hintStyle: Theme.of(
                            context,
                          ).textTheme.labelMedium!.copyWith(
                            fontSize: 12,
                            color: Pallete.grayScaleColor400,
                          ),
                          hintText: 'Add amount',
                        ),
                        controller: _amountController,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: screenHeight(context) * 0.05,
                        child: CustomElevatedButton(
                          fontSize: 12,
                          title: 'back',
                          onTap: () {
                            context.pop();
                          },
                          fillColor: Pallete.grayScaleColor400,
                          textColor: Colors.black,
                        ),
                      ),
                      SizedBox(
                        // width: screenWidth(context) * 0.2,
                        height: screenHeight(context) * 0.05,
                        child: CustomElevatedButton(
                          fontSize: 12,
                          title: 'Recharge',
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              _myWalletCubit.createPaymentIntent(
                                double.parse(_amountController.text),
                              );
                            }
                          },
                          fillColor: Theme.of(context).colorScheme.primary,
                          textColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              );
        },
      ),
    );
  }

  final _amountController = TextEditingController();

  late final MyWalletCubit _myWalletCubit;
  final _formKey = GlobalKey<FormState>();
}
