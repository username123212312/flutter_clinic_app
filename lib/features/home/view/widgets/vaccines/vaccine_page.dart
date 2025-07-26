import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

  final List<Map<String, dynamic>> vaccines = [
    {
      'name': 'Hepatitis B',
      'dose': '1st Dose',
      'taken': true,
      'when': 'At birth',
      'price': '\$20',
    },
    {
      'name': 'Polio',
      'dose': '2nd Dose',
      'taken': false,
      'when': '4 months',
      'price': '\$15',
    },
    {
      'name': 'MMR',
      'dose': '1st Dose',
      'taken': false,
      'when': '12 months',
      'price': '\$30',
    },
    {
      'name': 'DTP',
      'dose': '3rd Dose',
      'taken': true,
      'when': '6 months',
      'price': '\$25',
    },
    {
      'name': 'DTP1',
      'dose': '3rd Dose',
      'taken': true,
      'when': '6 months',
      'price': '\$25',
    },
    {
      'name': 'DTP3',
      'dose': '3rd Dose',
      'taken': true,
      'when': '6 months',
      'price': '\$25',
    },
  ];

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
            const SizedBox(height: 15),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Available Vaccines",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  fontSize: 17,
                  color: Pallete.black1,
                ),
              ),
            ),
            const SizedBox(height: 10),
            TwoSelectableWidget(
              inBetweenPadding: screenWidth(context) * 0.3,
              twoTitles: const ['Now', 'Upcoming'],
              onToggleIndex: (index) {
                setState(() {
                  _currentFilter = index;
                });
              },
              currentIndex: _currentFilter,
            ),
            const SizedBox(height: 10),

            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 1,
              ),
              itemCount:
                  vaccines
                      .where(
                        (v) => _currentFilter == 0 ? v['taken'] : !v['taken'],
                      )
                      .length,
              itemBuilder: (context, index) {
                final filtered =
                    vaccines
                        .where(
                          (v) => _currentFilter == 0 ? v['taken'] : !v['taken'],
                        )
                        .toList();
                final v = filtered[index];
                return VaccineInfoCard(vaccine: v, onTap: () {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
