import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/utils.dart';
import '../../../model/doctor_model.dart';
import 'find_doctor_card.dart';

class SearchOverlay extends StatefulWidget {
  const SearchOverlay({
    super.key,
    required this.doctorsSearchList,
    this.onChanged,
  });

  final List<DoctorModel> doctorsSearchList;

  final void Function(String value)? onChanged;

  @override
  State<SearchOverlay> createState() => _SearchOverlayState();
}

class _SearchOverlayState extends State<SearchOverlay> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Align(
        alignment: Alignment.topCenter,
        child: Material(
          color: Pallete.transparentColor,
          child: Container(
            width: width,
            height: screenHeight(context) * 0.53,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(color: Pallete.grayScaleColor0),
            child: Column(
              children: [
                TextField(
                  textInputAction: TextInputAction.search,
                  controller: searchController,
                  onChanged: widget.onChanged,
                  onSubmitted: widget.onChanged,
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontSize: 14,
                    color: Pallete.black1,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    hoverColor: Colors.transparent,
                    hintText: 'Search for the name of the doctor',
                    hintStyle: Theme.of(
                      context,
                    ).textTheme.labelMedium!.copyWith(
                      fontSize: 12,
                      color: Pallete.grayScaleColor500,
                    ),

                    prefixIcon: const Icon(
                      Icons.search,
                      color: Pallete.black1,
                      size: 27,
                    ),
                    filled: true,
                    fillColor: Pallete.grayScaleColor0,
                    contentPadding: const EdgeInsets.symmetric(vertical: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child:
                      widget.doctorsSearchList.isEmpty
                          ? Center(
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/search.png',
                                  width: screenWidth(context) * 0.8,
                                  height: screenHeight(context) * 0.3,
                                ),

                                Text(
                                  "No doctors found",
                                  style: Theme.of(
                                    context,
                                  ).textTheme.labelSmall!.copyWith(
                                    color: Pallete.black1,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          )
                          : ListView(
                            children:
                                widget.doctorsSearchList
                                    .map(
                                      (doctor) => Padding(
                                        padding: const EdgeInsets.only(
                                          bottom: 12,
                                        ),
                                        child: FindDoctorCard(
                                          padding: 25,
                                          title:
                                              '${doctor.firstName ?? 'No'} ${doctor.lastName ?? 'Doctor'}',
                                          subtitle:
                                              doctor.speciality ??
                                              'No specality',
                                          imagePath:
                                              doctor.photo ??
                                              'assets/images/logo.webp',
                                          rating:
                                              double.tryParse(
                                                (doctor.finalRate ?? 0.0)
                                                    .toString(),
                                              ) ??
                                              0.0,
                                          visitDuration:
                                              doctor.averageVisitDuration ?? '',
                                          onTap: () {
                                            context.pop();
                                            context.pushNamed(
                                              AppRouteConstants
                                                  .doctorInfoRouteName,
                                              extra: doctor,
                                            );
                                          },
                                        ),
                                      ),
                                    )
                                    .toList(),
                          ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
