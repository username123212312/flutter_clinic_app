import 'package:flutter/material.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
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
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  color:
                      widget.analysis.resultFile == null
                          ? Pallete.grayScaleColor400
                          : Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(12),
                ),
                height: screenHeight(context) * 0.18,
                width: screenWidth(context) * 0.4,
              ),
              Container(
                decoration: BoxDecoration(
                  color:
                      widget.analysis.resultFile == null
                          ? Pallete.grayScaleColor400
                          : Theme.of(context).colorScheme.tertiary,
                  borderRadius: BorderRadius.circular(12),
                ),
                height: screenHeight(context) * 0.18,
                width: screenWidth(context) * 0.4,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
