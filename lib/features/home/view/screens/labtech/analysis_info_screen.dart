import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/features/auth/view/widgets/auth_widgets.dart';
import 'package:our_flutter_clinic_app/features/home/model/analysis_model.dart';

import '../../../../../core/utils/utils.dart';

class AnalysisInfoScreen extends StatefulWidget {
  const AnalysisInfoScreen({super.key, required this.analysis});
  final AnalysisModel analysis;

  @override
  State<AnalysisInfoScreen> createState() => _AnalysisInfoScreenState();
}

class _AnalysisInfoScreenState extends State<AnalysisInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        toolbarHeight: screenHeight(context) * 0.11,
        title: Text(widget.analysis.name),
        titleTextStyle: Theme.of(
          context,
        ).textTheme.titleMedium!.copyWith(fontSize: 25),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          _buildFileAndPhoto(),
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Text(
                  'Description',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: screenWidth(context),
                  height: screenHeight(context) * 0.18,
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(
                      context,
                    ).textTheme.titleSmall!.copyWith(fontSize: 17),
                    widget.analysis.description ?? 'Analysis description',
                  ),
                ),
                SizedBox(height: screenHeight(context) * 0.2),
                SizedBox(
                  width: screenWidth(context),
                  child: CustomElevatedButton(
                    title: 'Add result',
                    onTap: () {
                      context.pushNamed(
                        AppRouteConstants.labtechAddAnalysisResultRouteName,
                      );
                    },
                    fillColor: Theme.of(context).colorScheme.primary,
                    textColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row _buildFileAndPhoto() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: widget.analysis.resultFile == null ? null : () {},
          child: Container(
            decoration: BoxDecoration(
              color:
                  widget.analysis.resultFile == null
                      ? Pallete.grayScaleColor300
                      : Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(12),
            ),
            height: screenHeight(context) * 0.18,
            width: screenWidth(context) * 0.4,
            child: Center(
              child: Text(
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                ),
                widget.analysis.resultFile == null ? 'No file' : 'Result file',
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: widget.analysis.resultFile == null ? null : () {},
          child: Container(
            decoration: BoxDecoration(
              color:
                  widget.analysis.resultFile == null
                      ? Pallete.grayScaleColor300
                      : Theme.of(context).colorScheme.tertiary,
              borderRadius: BorderRadius.circular(12),
            ),
            height: screenHeight(context) * 0.18,
            width: screenWidth(context) * 0.4,
            child: Center(
              child: Text(
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                ),
                widget.analysis.resultFile == null
                    ? 'No photo'
                    : 'Result photo',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
