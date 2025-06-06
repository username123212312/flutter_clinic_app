import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:our_flutter_clinic_app/features/auth/view/widgets/auth_widgets.dart';

import '../../../../../core/utils/utils.dart';

class AddResultScreen extends StatefulWidget {
  const AddResultScreen({super.key});

  @override
  State<AddResultScreen> createState() => _AddResultScreenState();
}

class _AddResultScreenState extends State<AddResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        toolbarHeight: screenHeight(context) * 0.11,
        title: Text('Add Result'),
        titleTextStyle: Theme.of(
          context,
        ).textTheme.titleMedium!.copyWith(fontSize: 25),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Text(
                  'Analysis file',
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall!.copyWith(fontSize: 18),
                ),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  child: SizedBox(
                    height: screenHeight(context) * 0.2,
                    width: screenWidth(context),
                    child: DottedBorder(
                      color: Theme.of(context).colorScheme.primary,
                      dashPattern: [7, 10],
                      borderType: BorderType.RRect,
                      child: Center(
                        child: Icon(
                          Icons.file_copy,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Analysis photo',
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall!.copyWith(fontSize: 18),
                ),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  child: SizedBox(
                    height: screenHeight(context) * 0.2,
                    width: screenWidth(context),
                    child: DottedBorder(
                      color: Theme.of(context).colorScheme.primary,
                      dashPattern: [7, 10],
                      borderType: BorderType.RRect,
                      child: Center(
                        child: Icon(
                          color: Theme.of(context).colorScheme.primary,
                          Icons.photo,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight(context) * 0.1),
                SizedBox(
                  width: screenWidth(context),
                  child: CustomElevatedButton(
                    title: 'Confirm',
                    onTap: () {
                      if (_chosenFile == null && _chosenPhoto == null) {
                        clearAndShowSnackBar(
                          context,
                          'You must enter either a file or photo or both',
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
        ),
      ),
    );
  }

  File? _chosenFile;
  File? _chosenPhoto;
}
