import 'package:flutter_clinic_app/core/consts/app_constants.dart';
import 'package:flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:flutter_clinic_app/core/utils/logger.dart';
import 'package:flutter_clinic_app/features/home/controller/analysis_item_cubit/analysis_item_cubit.dart';
import 'package:flutter_clinic_app/features/home/model/analysis_model.dart';
import 'package:flutter_clinic_app/features/home/repository/analysis_item_repository.dart';

import 'package:open_filex/open_filex.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/theme/app_pallete.dart';

class AnalysisItemWidget extends StatefulWidget {
  const AnalysisItemWidget({super.key, required this.analysis});
  final AnalysisModel analysis;

  @override
  State<AnalysisItemWidget> createState() => _AnalysisItemWidgetState();
}

class _AnalysisItemWidgetState extends State<AnalysisItemWidget> {
  late final AnalysisItemCubit _analysisItemCubit;
  @override
  void initState() {
    super.initState();
    _analysisItemCubit = AnalysisItemCubit(
      cubitId: widget.analysis.name,
      analysis: widget.analysis,
      analysisItemRepository: AnalysisItemRepository(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () async {
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
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Pallete.grayScaleColor200,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.scaleDown,
                  image: AssetImage('assets/images/medical_file_icon.png'),
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
                  widget.analysis.description ?? 'no description',
                  style: Theme.of(
                    context,
                  ).textTheme.labelSmall!.copyWith(fontSize: 10),
                ),
              ],
            ),
            Spacer(),
            BlocBuilder<AnalysisItemCubit, AnalysisItemState>(
              bloc: _analysisItemCubit,
              builder: (context, state) {
                return state.downloadedAnalysis == null
                    ? state.status.isDownloading
                        ? SizedBox(
                          height: 30,
                          width: 30,
                          child: CircularProgressIndicator(
                            value: state.downloadProgress,
                          ),
                        )
                        : Icon(Icons.download)
                    : state.status.isError
                    ? Icon(Icons.refresh)
                    : Icon(Icons.folder_open_outlined);
              },
            ),
          ],
        ),
      ),
    );
  }
}
