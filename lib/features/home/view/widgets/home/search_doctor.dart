import 'package:flutter/material.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/utils.dart';
import 'find_doctor_card.dart';

class SearchOverlay extends StatefulWidget {
  const SearchOverlay({super.key});

  @override
  State<SearchOverlay> createState() => _SearchOverlayState();
}

class _SearchOverlayState extends State<SearchOverlay> {
  final TextEditingController searchController = TextEditingController();

  final List<Map<String, dynamic>> doctors = [
    {
      'name': 'Jennifer Miller',
      'specialty': 'Pediatrician',
      'image': 'assets/icons/pro.avif',
      'rating': 4.8,
      'start': '10:30am',
      'end': '5:30pm',
    },
    {
      'name': 'Ahmed Sami',
      'specialty': 'Dentist',
      'image': 'assets/icons/pro.avif',
      'rating': 4.5,
      'start': '1:00pm',
      'end': '6:00pm',
    },
    {
      'name': 'Ahmed Sami',
      'specialty': 'Dentist',
      'image': 'assets/icons/pro.avif',
      'rating': 4.5,
      'start': '1:00pm',
      'end': '6:00pm',
    },
  ];

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
                  controller: searchController,
                  onChanged: (_) => setState(() {}),
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
                      doctors
                              .where(
                                (doctor) =>
                                    doctor['name'].toLowerCase().startsWith(
                                      searchController.text.toLowerCase(),
                                    ),
                              )
                              .isEmpty
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
                                doctors
                                    .where(
                                      (doctor) => doctor['name']
                                          .toLowerCase()
                                          .startsWith(
                                            searchController.text.toLowerCase(),
                                          ),
                                    )
                                    .map(
                                      (doctor) => Padding(
                                        padding: const EdgeInsets.only(
                                          bottom: 12,
                                        ),
                                        child: FindDoctorCard(
                                          padding: 25,
                                          title: doctor['name'],
                                          subtitle: doctor['specialty'],
                                          imagePath: doctor['image'],
                                          rating: doctor['rating'],
                                          startTime: doctor['start'],
                                          endTime: doctor['end'],
                                          onTap: () {},
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
