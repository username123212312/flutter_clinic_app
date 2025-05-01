import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/utils/validator_util.dart';
import 'package:flutter_clinic_app/features/auth/view/widgets/background_container.dart';
import 'package:flutter_clinic_app/features/auth/view/widgets/basic_info_widget.dart';
import 'package:flutter_clinic_app/features/auth/view/widgets/custom_elevated_button.dart';
import 'package:flutter_clinic_app/features/auth/view/widgets/rule_item.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/utils.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: screenHeight(context) * 0.1,
          title: Text('Create a Password'),
          titleTextStyle: Theme.of(
            context,
          ).textTheme.labelSmall!.copyWith(fontSize: 20),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: BackgroundContainer(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 40, right: 40),
              child: Column(
                children: [
                  _buildHeader(),
                  _buildTwoFormFields(),
                  SizedBox(height: 50),
                  SizedBox(
                    width: screenWidth(context) * 0.9,
                    child: CustomElevatedButton(
                      fontSize: 15,
                      title: 'Create Password',
                      onTap: () {},
                      fillColor: Theme.of(context).colorScheme.primary,
                      textColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Column _buildTwoFormFields() {
    return Column(
      children: [
        Stack(
          children: [
            Positioned(
              top: 0,
              right: 10,
              child: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (_) {
                      return _buildAlertDialog();
                    },
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  child: Icon(
                    Icons.question_mark,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
            BasicInfoWidget(
              controller: _passwordController,
              maxLines: 1,
              obsecureText: true,
              validator: (value) {
                if (!ValidatorUtil.validatePassword(value ?? '')) {
                  return 'Enter a valid password';
                } else {
                  return null;
                }
              },
              title: 'New Password',
              hintText: 'New Password',
              keyboardType: TextInputType.text,
            ),
          ],
        ),
        SizedBox(height: 15),
        BasicInfoWidget(
          controller: _confirmPasswordController,
          maxLines: 1,
          obsecureText: true,
          validator: (value) {
            if (_confirmPasswordController.text == _passwordController.text) {
              return 'Passwords don\'t match!';
            } else {
              return null;
            }
          },
          title: 'Confirm Password',
          hintText: 'Confirm Password',
          keyboardType: TextInputType.text,
        ),
      ],
    );
  }

  AlertDialog _buildAlertDialog() {
    return AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.2),
          width: 1.0,
        ),
      ),
      elevation: 8,
      title: Row(
        children: [
          Icon(
            Icons.lock_outline,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(width: 12),
          Text(
            'Password Requirements',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RuleItem(text: 'Minimum 8 characters'),
          RuleItem(text: 'Contains numbers'),
          RuleItem(text: 'Has lowercase letters'),
          RuleItem(text: 'Has capital letters'),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => context.pop(),
          child: Text(
            'GOT IT',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

  Column _buildHeader() {
    return Column(
      children: [
        Text(
          'Enter New Password',
          style: Theme.of(
            context,
          ).textTheme.labelMedium!.copyWith(fontSize: 18),
        ),
        Image.asset(
          'assets/images/password.webp',
          width: screenWidth(context) * 0.6,
          height: screenHeight(context) * 0.3,
        ),
      ],
    );
  }
}
