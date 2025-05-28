import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/utils/general_utils.dart';
import 'package:our_flutter_clinic_app/core/utils/validator_util.dart';

class OTPWidgetField extends StatelessWidget {
  const OTPWidgetField({super.key, this.onSaved, this.isEnd = false});
  final void Function(String?)? onSaved;
  final bool isEnd;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth(context) * 0.2,
      height: screenHeight(context) * 0.13,
      child: TextFormField(
        validator: (value) {
          if (value != null) {
            if (value.isEmpty) {
              return 'Empty!';
            } else {
              return null;
            }
          } else {
            return null;
          }
        },
        onSaved: onSaved,
        onChanged: (value) {
          if (value.length == 1) {
            if (isEnd) {
              FocusScope.of(context).unfocus();
              return;
            }
            FocusScope.of(context).nextFocus();
          }
        },
        style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 20),
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        textAlign: TextAlign.center,

        decoration: InputDecoration(
          hintText: '0',
          hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
            color: Pallete.grayScaleColor500,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
