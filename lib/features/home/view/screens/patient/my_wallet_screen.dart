import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:our_flutter_clinic_app/core/models/usermodel.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:our_flutter_clinic_app/features/home/controller/my_wallet_cubit/my_wallet_cubit.dart';
import 'package:our_flutter_clinic_app/features/home/repository/payment_repository.dart';
import 'package:toastification/toastification.dart';

import '../../../../../core/utils/decimal_input_formatter.dart';
import '../../../../../core/utils/utils.dart';

class MyWalletScreen extends StatefulWidget {
  const MyWalletScreen({super.key});

  @override
  State<MyWalletScreen> createState() => _MyWalletScreenState();
}

class _MyWalletScreenState extends State<MyWalletScreen> {
  @override
  void initState() {
    super.initState();
    _myWalletCubit = MyWalletCubit(paymentRepo: PaymentRepository());
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => LoadingOverlay().show(context),
    );
  }

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final user = context.read<AuthBloc>().state.authUser?.user;
    return Scaffold(
      appBar: AppBar(
        actions: [
          BlocBuilder<MyWalletCubit, MyWalletState>(
            bloc: _myWalletCubit,
            builder: (context, state) {
              return IconButton(
                onPressed:
                    state.status.isLoading
                        ? null
                        : () {
                          _myWalletCubit.fetchWalletRange();
                        },
                icon: Icon(Icons.refresh, size: 25),
              );
            },
          ),
        ],
        forceMaterialTransparency: true,
        toolbarHeight: screenHeight(context) * 0.13,
        title: Text('My Wallet'),
        titleTextStyle: Theme.of(
          context,
        ).textTheme.titleMedium!.copyWith(fontSize: 25),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: 20.0,
          right: 20,
          bottom: MediaQuery.of(context).viewInsets.bottom * 0.3,
        ),
        child: Column(
          children: [
            _buildWalletItem(user),
            SizedBox(height: screenHeight(context) * 0.3),
            TextFormField(
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              inputFormatters: [
                FilteringTextInputFormatter.singleLineFormatter,
                DecimalInputFormatter(),
              ],
              controller: _amountController,
              style: TextStyle(fontSize: 15, color: Colors.black),
              decoration: InputDecoration(
                hintText: '50.00',
                hintStyle: TextStyle(
                  fontSize: 15,
                  color: Pallete.grayBorderColor,
                ),
                prefixIcon: Icon(Icons.attach_money, color: Pallete.black1),
                contentPadding: EdgeInsets.symmetric(vertical: 20),
              ),
            ),
            SizedBox(height: 30),

            BlocListener<MyWalletCubit, MyWalletState>(
              bloc: _myWalletCubit,
              listener: (context, state) {
                if (state.status.isLoading) {
                  LoadingOverlay().show(context);
                } else {
                  LoadingOverlay().hideAll();
                  if (state.status.isError) {
                    showToast(
                      context: context,
                      type: ToastificationType.error,
                      msg: state.message,
                    );
                  }

                  if (state.status.isDone) {
                    _myWalletCubit.fetchWalletRange();
                  }
                }
              },
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                    screenWidth(context) * 0.9,
                    screenHeight(context) * 0.08,
                  ),
                  foregroundColor: Colors.white,
                ),
                onPressed:
                    _amountController.text.trim().isEmpty
                        ? null
                        : () {
                          _myWalletCubit.createPaymentIntent(
                            double.tryParse(_amountController.text) ?? 0.0,
                          );
                        },
                child: Text(
                  'Recharge',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildWalletItem(UserModel? user) {
    return Container(
      width: screenWidth(context),
      height: screenHeight(context) * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: RadialGradient(
          center: Alignment(-0.5, -0.6), // slightly to top-left
          radius: 0.9,
          colors: [
            Color(0xFF00C6FF), // bright cyan
            Color(0xFF0072FF), // deep blue
          ],
          stops: [0.3, 1.0],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${user?.firstName ?? 'No'} ${user?.lastName ?? 'User'}',
                  style: Theme.of(
                    context,
                  ).textTheme.labelSmall!.copyWith(fontSize: 12),
                ),
              ],
            ),
          ),
          Positioned(
            top: 70,
            left: 30,
            child: BlocBuilder<MyWalletCubit, MyWalletState>(
              bloc: _myWalletCubit,
              builder: (context, state) {
                return Text(
                  '\$${state.walletRange ?? '0.00'}',
                  style: Theme.of(
                    context,
                  ).textTheme.labelMedium!.copyWith(fontSize: 32),
                );
              },
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Image.asset(
              'assets/icons/mastercard_logo.png',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  late final MyWalletCubit _myWalletCubit;
  final _amountController = TextEditingController();
}
