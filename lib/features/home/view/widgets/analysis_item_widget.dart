import 'dart:developer';

import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/utils/logger.dart';
import 'package:our_flutter_clinic_app/core/utils/utils.dart';
import 'package:our_flutter_clinic_app/features/home/controller/analysis_item_cubit/analysis_item_cubit.dart';
import 'package:our_flutter_clinic_app/features/home/model/analysis_model.dart';
import 'package:our_flutter_clinic_app/features/home/repository/analysis_item_repository.dart';

import 'package:open_filex/open_filex.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/theme/app_pallete.dart';

class AnalysisItemWidget extends StatefulWidget {
  const AnalysisItemWidget({
    super.key,
    required this.analysis,
    this.onTap,
    this.isLab = false,
  });
  final AnalysisModel analysis;
  final void Function()? onTap;

  final bool isLab;

  @override
  State<AnalysisItemWidget> createState() => _AnalysisItemWidgetState();
}

class _AnalysisItemWidgetState extends State<AnalysisItemWidget> {
  late final AnalysisItemCubit _analysisItemCubit;
  @override
  void initState() {
    super.initState();
    _analysisItemCubit = AnalysisItemCubit(
      cubitId:
          widget.analysis.name +
          widget.analysis.id.toString() +
          (widget.analysis.resultFile ?? 'No file') +
          (widget.analysis.resultPhoto ?? 'No photo'),
      analysis: widget.analysis,
      analysisItemRepository: AnalysisItemRepository(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap:
          widget.onTap ??
          () async {
            if (_analysisItemCubit.state.downloadedAnalysis != null) {
              await OpenFilex.open(
                _analysisItemCubit.state.downloadedAnalysis!.localPath!,
              );
            } else {
              _analysisItemCubit.downloadAnalysis();
            }
          },
      child: Container(
        decoration: BoxDecoration(
          color: Pallete.grayScaleColor300.withAlpha(100),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            GestureDetector(
              onTap: () => log('message'),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Pallete.grayScaleColor200,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  (widget.analysis.patientNumber ?? 0).toString(),
                  style: Theme.of(
                    context,
                  ).textTheme.labelMedium!.copyWith(fontSize: 12),
                ),
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  widget.analysis.name,
                  style: Theme.of(
                    context,
                  ).textTheme.labelSmall!.copyWith(fontSize: 14),
                ),
                Text(
                  'P: ${widget.analysis.patientFirstName ?? 'No'} ${widget.analysis.patientLastName ?? 'Patient'}',
                  style: Theme.of(
                    context,
                  ).textTheme.labelSmall!.copyWith(fontSize: 14),
                ),
              ],
            ),
            if (!widget.isLab) ...[
              if (widget.onTap == null) Spacer(),
              if (!(widget.analysis.resultFile == null &&
                  widget.analysis.resultPhoto == null))
                BlocBuilder<AnalysisItemCubit, AnalysisItemState>(
                  bloc: _analysisItemCubit,
                  builder: (context, state) {
                    if (state.downloadedAnalysis == null) {
                      return Icon(Icons.download);
                    }
                    if (state.status.isDownloading) {
                      return SizedBox(
                        height: 30,
                        width: 30,
                        child: CircularProgressIndicator(
                          value: state.downloadProgress,
                        ),
                      );
                    }
                    if (state.status.isError) {
                      return Icon(Icons.refresh);
                    } else {
                      return state.downloadedAnalysis == null
                          ? Icon(Icons.download)
                          : Icon(Icons.folder_open_outlined);
                    }
                  },
                ),
            ],
          ],
        ),
      ),
    );
  }
}
