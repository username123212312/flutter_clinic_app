import 'dart:developer';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:flutter_clinic_app/core/utils/general_utils.dart';
import 'package:flutter_clinic_app/core/widgets/widgets.dart';
import 'package:flutter_clinic_app/features/auth/view/widgets/auth_widgets.dart';

class DocumentsScreen extends StatefulWidget {
  const DocumentsScreen({super.key});

  @override
  State<DocumentsScreen> createState() => _DocumentsScreenState();
}

class _DocumentsScreenState extends State<DocumentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        toolbarHeight: screenHeight(context) * 0.13,
        title: Text('Documents'),
        titleTextStyle: Theme.of(
          context,
        ).textTheme.titleMedium!.copyWith(fontSize: 25),
        bottom: _buildAppBarBottom(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: MediaQuery.of(context).viewInsets.bottom * 0.3,
        ),
        child:
            _isUpload
                ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: _currentIndex == 1 ? 50 : 20),

                        if (_currentIndex == 0) _buildUploadedDocuments(),
                        if (_currentIndex == 1) _buildUploadNewDocument(),
                        SizedBox(height: 80),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: screenWidth(context) * 0.8,
                            child: CustomElevatedButton(
                              title:
                                  _currentIndex == 0 ? 'Next' : 'Upload File',
                              onTap: () {
                                setState(() {
                                  _currentIndex = 1;
                                });
                              },
                              fillColor: Theme.of(context).colorScheme.primary,
                              textColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
                : _buildUploaded(),
      ),
    );
  }

  SizedBox _buildUploadNewDocument() {
    return SizedBox(
      height: screenHeight(context) * 0.4,
      child: ListView(
        shrinkWrap: true,
        children: [
          Text.rich(
            TextSpan(
              text: 'File name',
              children: [
                TextSpan(
                  text: ' *',
                  style: TextStyle(fontSize: 15, color: Colors.red),
                ),
              ],
            ),
            style: Theme.of(
              context,
            ).textTheme.titleSmall!.copyWith(fontSize: 16),
          ),
          SizedBox(height: 10),
          CustomTextField(
            hintText: 'File name',
            keyboardType: TextInputType.text,
          ),
          SizedBox(height: 40),

          Text.rich(
            TextSpan(
              text: 'File description',
              children: [
                TextSpan(
                  text: ' *',
                  style: TextStyle(fontSize: 15, color: Colors.red),
                ),
              ],
            ),
            style: Theme.of(
              context,
            ).textTheme.titleSmall!.copyWith(fontSize: 16),
          ),
          SizedBox(height: 10),

          CustomTextField(
            hintText: 'File description',
            keyboardType: TextInputType.text,
            maxLength: 100,
            textInputAction: TextInputAction.done,
          ),
        ],
      ),
    );
  }

  Widget _buildUploadedDocuments() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Upload new document',
          style: Theme.of(
            context,
          ).textTheme.titleMedium!.copyWith(fontSize: 18),
        ),
        SizedBox(height: 60),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          width: screenWidth(context),
          height: screenHeight(context) * 0.3,
          child: GestureDetector(
            onTap: () {
              log('upload');
              //TODO upload document
            },
            child: DottedBorder(
              borderType: BorderType.RRect,
              radius: Radius.circular(12),
              dashPattern: [10, 5],
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(height: screenHeight(context) * 0.03),
                    Text(
                      'Upload Document',
                      style: Theme.of(
                        context,
                      ).textTheme.titleSmall!.copyWith(fontSize: 20),
                    ),
                    Icon(
                      size: 60,
                      Icons.arrow_circle_up_outlined,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildUploaded() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Text(
          'Medical Documents',
          style: Theme.of(
            context,
          ).textTheme.titleMedium!.copyWith(fontSize: 18),
        ),
        SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          height: screenHeight(context) * 0.6,
          child: _buildDocumentsList(),
        ),
      ],
    );
  }

  Widget _buildDocumentsList() {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 20),
      shrinkWrap: true,
      itemCount: 10,
      itemExtent: screenHeight(context) * 0.1,
      itemBuilder: (_, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Container(
            decoration: BoxDecoration(
              color: Pallete.grayScaleColor300.withAlpha(100),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Pallete.grayScaleColor200,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/icons/pdf_icon.png'),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Analysis.pdf',
                      style: Theme.of(
                        context,
                      ).textTheme.labelSmall!.copyWith(fontSize: 14),
                    ),
                    Text(
                      'Description',
                      style: Theme.of(
                        context,
                      ).textTheme.labelSmall!.copyWith(fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  PreferredSizeWidget _buildAppBarBottom() {
    return PreferredSize(
      preferredSize: Size(screenWidth(context), screenHeight(context) * 0.08),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AnimatedSwitcher(
            duration: Duration(milliseconds: 200),
            child:
                _isUpload
                    ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: screenWidth(context) * 0.3,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: screenWidth(context) * 0.3,
                          height: 4,
                          decoration: BoxDecoration(
                            color:
                                _currentIndex == 1
                                    ? Theme.of(context).colorScheme.primary
                                    : Pallete.grayScaleColor400,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ],
                    )
                    : null,
          ),
          SizedBox(
            height: screenHeight(context) * 0.1,
            width: screenWidth(context) * 0.6,
            child: FittedBox(
              child: TwoSelectableWidget(
                twoTitles: ['Uploaded', 'New'],
                onToggleIndex: (newIndex) {
                  setState(() {
                    _isUpload = newIndex == 1 ? true : false;
                    if (newIndex == 0) {
                      _currentIndex = 0;
                    }
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  int _currentIndex = 0;
  bool _isUpload = false;
}
