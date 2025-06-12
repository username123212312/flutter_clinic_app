import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../../core/theme/app_pallete.dart';
import '../../../../../../../core/utils/utils.dart';
import '../../../../auth/view/widgets/custom_button.dart';
import '../../widgets/widget_doctor/payment_method_tile.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  String selectedMethod = 'Visa';

  final List<Map<String, dynamic>> paymentMethods = [
    {'name': 'Mastercard', 'image': 'assets/images/Mastercard.png'},
    {'name': 'Visa', 'image': 'assets/images/Visa.png'},
    {'name': 'Payoneer', 'image': 'assets/images/Payoneer.png'},
    {'name': 'Gpay', 'image': 'assets/images/google.png'},
    {'name': 'Paypal', 'image': 'assets/images/Paypal.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Payment Methods',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: 16,
            color: Pallete.black1,
          ),
        ),
        backgroundColor: Pallete.grayScaleColor0,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(
            FontAwesomeIcons.arrowLeft,
            color: Pallete.black1,
            size: 18,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(bottom: 14, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Select Method',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 18,
                      color: Pallete.black1,
                    ),
                  ),
                  Icon(Icons.add, color: Pallete.gray1, size: 28),
                ],
              ),
            ),
            const SizedBox(height: 10),
            ...paymentMethods.map((method) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 14, left: 18, right: 16),
                child: PaymentMethodTile(
                  methodName: method['name'],
                  imagePath: method['image'],
                  isSelected: selectedMethod == method['name'],
                  onChanged: () {
                    setState(() {
                      selectedMethod = method['name'];
                    });
                  },
                ),
              );
            }),
            SizedBox(height: 40),
            Center(
              child: CustomButton(
                text: "Book Appointment",
                onPressed: () {},
                color: Pallete.primaryColor,

                width: screenWidth(context) * 0.75,
                height: screenHeight(context) * 0.065,
                padding: const EdgeInsets.all(16),
                borderRadius: 32,
                fontSize: 16,
                textColor: Pallete.grayScaleColor0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
