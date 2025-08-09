import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';
import 'package:our_flutter_clinic_app/features/home/controller/select_vaccination_cubit/select_vaccination_cubit.dart';
import 'package:our_flutter_clinic_app/features/home/model/vaccinationrecord.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../core/navigation/app_route_constants.dart';
import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/general_utils.dart';
import '../../../../../core/widgets/two_sellectable_widget.dart';
import 'educational_slider_vaccine.dart';
import 'vaccine_flip_card.dart';
import 'vaccine_info_card.dart';

class VaccineScreenWidget extends StatefulWidget {
  const VaccineScreenWidget({super.key});

  @override
  State<VaccineScreenWidget> createState() => _VaccineScreenWidgetState();
}

class _VaccineScreenWidgetState extends State<VaccineScreenWidget> {
  int _currentFilter = 0;

  final List<Map<String, String>> vaccineInfos = [
    {
      'title': 'Vaccines Save Lives',
      'text':
          'Vaccines protect children from serious diseases like measles, polio, and hepatitis.',
      'image': 'assets/images/child vaccination.jpg',
    },
    {
      'title': 'Stay on Schedule',
      'text':
          'Following the vaccination schedule keeps your child healthy and safe.',
      'image': 'assets/images/girl vaccination.jpg',
    },
    {
      'title': 'Consult Your Doctor',
      'text':
          'Always consult your pediatrician if you have questions about vaccines.',
      'image': 'assets/images/little-baby-vaccination.jpg',
    },
  ];

  final List<Map<String, String>> flipFacts = [
    {
      'front': 'Hepatitis B',
      'back': 'Given at birth.\nImportance: Prevents chronic liver disease.',
    },
    {
      'front': 'Polio',
      'back':
          'Given at 2-4-6 months.\nImportance: Stops paralysis and outbreaks.',
    },
    {
      'front': 'MMR',
      'back':
          'Given at 12 months.\nImportance: Protects from measles, mumps, rubella.',
    },
    {
      'front': 'DTP',
      'back':
          'Given at 2-4-6 months.\nImportance: Prevents deadly bacterial infections.',
    },
  ];

  @override
  void initState() {
    super.initState();
    if (getChildId() != null) {
      context.read<SelectVaccinationCubit>().changeFilter(VaccintaionType.now);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Facts About Vaccines",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  fontSize: 17,
                  color: Pallete.black1,
                ),
              ),
            ),
            const SizedBox(height: 15),
            EducationalSliderVaccine(vaccineInfos: vaccineInfos),
            const SizedBox(height: 15),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Quick Vaccine Tips",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  fontSize: 17,
                  color: Pallete.black1,
                ),
              ),
            ),
            const SizedBox(height: 15),
            VaccineFlipCard(flipFacts: flipFacts),
            if (getChildId() == null) ...buildSelectChild(),
            if (getChildId() != null) ..._buildAvailableVaccines(),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildAvailableVaccines() {
    return [
      const SizedBox(height: 15),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Available Vaccines",
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
              fontSize: 17,
              color: Pallete.black1,
            ),
          ),
          IconButton(
            iconSize: 20,
            onPressed: () {
              context.read<SelectVaccinationCubit>().fetchVaccines();
            },
            icon: Icon(FontAwesomeIcons.arrowsRotate),
          ),
        ],
      ),
      const SizedBox(height: 10),
      TwoSelectableWidget(
        inBetweenPadding: screenWidth(context) * 0.3,
        twoTitles: const ['Now', 'Upcoming'],
        onToggleIndex: (index) {
          setState(() {
            _currentFilter = index;
            context.read<SelectVaccinationCubit>().changeFilter(
              _currentFilter == 0
                  ? VaccintaionType.now
                  : VaccintaionType.upcoming,
            );
          });
        },
        currentIndex: _currentFilter,
      ),
      const SizedBox(height: 10),
      BlocConsumer<SelectVaccinationCubit, SelectVaccinationState>(
        listener: (context, state) {
          if (state.status.isError) {
            showToast(msg: state.message);
          }
        },
        builder: (context, state) {
          if (state.vaccines.isEmpty) {
            return Center(
              heightFactor: 1.7,
              child: Image.asset(
                'assets/images/il_empty_activity.webp',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            );
          }
          return Skeletonizer(
            enabled: state.status.isLoading,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 1,
              ),
              itemCount: state.status.isLoading ? 4 : state.vaccines.length,
              itemBuilder: (context, index) {
                if (state.status.isLoading) {
                  return VaccineInfoCard(
                    vaccine: VaccinationRecord(),
                    onTap: () {},
                  );
                }
                final vaccine = state.vaccines[index];
                return VaccineInfoCard(
                  vaccine: vaccine,
                  onTap: () {
                    context.pushNamed(
                      AppRouteConstants.vaccineDetailsRouteName,
                      extra: vaccine,
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    ];
  }

  List<Widget> buildSelectChild() {
    return [
      SizedBox(height: 70),
      Text(
        textAlign: TextAlign.center,
        'Select a child to \nsee available vaccines',
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
          fontSize: 18,
          fontStyle: FontStyle.italic,
          color: Pallete.grayScaleColor400,
        ),
      ),
    ];
  }
}
