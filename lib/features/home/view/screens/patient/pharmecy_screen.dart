import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/utils.dart';
import '../../widgets/home/pharmecy_card.dart';
import '../../widgets/home/search.dart';

class PharmacyListScreen extends StatefulWidget {
  const PharmacyListScreen({super.key});

  @override
  State<PharmacyListScreen> createState() => _PharmacyListScreenState();
}

class _PharmacyListScreenState extends State<PharmacyListScreen> {
  String query = '';
  final TextEditingController _searchController = TextEditingController();

  final List<Map<String, dynamic>> allPharmacies = [
    {
      'name': 'Al Zahra Pharmacy',
      'location': 'Location: Al Thawra Street - Tartus',
      'phone': 'Tel: +963 998 998 998',
      'startTime': '09:00 AM',
      'endTime': '05:00 PM',
      'latitude': 35.0,
      'longitude': 36.0,
      'namelocation': 'Al Thawra Street - Tartus',
    },
    {
      'name': 'Al Shifa Pharmacy',
      'location': 'Location: Al Hamra Street - Tartus',
      'phone': 'Tel: +963 944 444 444',
      'startTime': '08:00 AM',
      'endTime': '04:00 PM',
      'latitude': 35.1,
      'longitude': 36.1,
      'namelocation': 'Al Hamra Street - Tartus',
    },
    {
      'name': 'Al Shifa Pharmacy',
      'location': 'Location: Al Hamra Street - Tartus',
      'phone': 'Tel: +963 944 444 444',
      'startTime': '08:00 AM',
      'endTime': '04:00 PM',
      'latitude': 35.1,
      'longitude': 36.1,
      'namelocation': 'Al Hamra Street - Tartus',
    },
    {
      'name': 'Al Shifa Pharmacy',
      'location': 'Location: Al Hamra Street - Tartus',
      'phone': 'Tel: +963 944 444 444',
      'startTime': '08:00 AM',
      'endTime': '04:00 PM',
      'latitude': 35.1,
      'longitude': 36.1,
      'namelocation': 'Al Hamra Street - Tartus',
    },
    {
      'name': 'Al Shifa Pharmacy',
      'location': 'Location: Al Hamra Street - Tartus',
      'phone': 'Tel: +963 944 444 444',
      'startTime': '08:00 AM',
      'endTime': '04:00 PM',
      'latitude': 35.1,
      'longitude': 36.1,
      'namelocation': 'Al Hamra Street - Tartus',
    },
    {
      'name': 'Al Shifa Pharmacy',
      'location': 'Location: Al Hamra Street - Tartus',
      'phone': 'Tel: +963 944 444 444',
      'startTime': '08:00 AM',
      'endTime': '04:00 PM',
      'latitude': 35.1,
      'longitude': 36.1,
      'namelocation': 'Al Hamra Street - Tartus',
    },
  ];

  List<Map<String, dynamic>> get filteredPharmacies {
    if (query.isEmpty) return allPharmacies;
    return allPharmacies
        .where(
          (pharmacy) =>
              pharmacy['name'].toLowerCase().startsWith(query.toLowerCase()),
        )
        .toList();
  }

  void _showSearchDialog() {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: 'Search',
      barrierColor: Colors.transparent,
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, anim1, anim2) {
        return Material(
          type: MaterialType.transparency,
          child: Align(
            alignment: Alignment.topCenter,
            child: SearchDialog(
              controller: _searchController,
              hint: 'Search for the name of the pharmacies',
              onChanged: (value) => setState(() => query = value),
            ),
          ),
        );
      },
      transitionBuilder: (context, animation, _, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, -1),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      appBar: AppBar(
        backgroundColor: Pallete.grayScaleColor0,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            FontAwesomeIcons.arrowLeft,
            color: Pallete.grayScaleColor700,
            size: 18,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: Text(
          'Nearby Pharmacies',
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
            fontSize: 20,
            color: Pallete.grayScaleColor700,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Pallete.grayScaleColor700,
              size: 24,
            ),
            onPressed: _showSearchDialog,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child:
            filteredPharmacies.isEmpty
                ? Center(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: screenHeight(context) * 0.2),
                          Image.asset(
                            'assets/images/search.png',
                            width: screenWidth(context) * 0.7,
                            height: screenHeight(context) * 0.3,
                          ),
                        ],
                      ),
                      Text(
                        "No Pharmacies found",
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: Pallete.black1,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                )
                : SizedBox(
                  height: screenHeight(context) * 0.9,
                  child: ListView.separated(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(16),
                    itemCount: filteredPharmacies.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 12),
                    itemBuilder: (context, index) {
                      final pharmacy = filteredPharmacies[index];
                      return PharmacyCard(
                        name: pharmacy['name'],
                        location: pharmacy['location'],
                        phone: pharmacy['phone'],
                        startTime: pharmacy['startTime'],
                        endTime: pharmacy['endTime'],
                        latitude: pharmacy['latitude'],
                        longitude: pharmacy['longitude'],
                        namelocation: pharmacy['namelocation'],
                      );
                    },
                  ),
                ),
      ),
    );
  }
}
