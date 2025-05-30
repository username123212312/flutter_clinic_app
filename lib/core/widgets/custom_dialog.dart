import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/utils/utils.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key, required this.content, this.size});
  final Widget content;
  final Size? size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            color: Pallete.grayScaleColor200,
          ),
          width: size != null ? size!.width : screenWidth(context) * 0.8,
          height: size != null ? size!.height : screenHeight(context) * 0.3,
          child: Center(child: content),
        ),
      ],
    );
  }
}
