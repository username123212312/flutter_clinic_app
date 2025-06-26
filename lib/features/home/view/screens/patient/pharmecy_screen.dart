import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:our_flutter_clinic_app/features/home/controller/pharmacies_cubit/pharmacies_cubit.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/widgets/loading_overlay.dart';
import '../../../repository/pharmacies_repository.dart';
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

  @override
  void initState() {
    super.initState();
    _pharmaciesCubit.fetchAllPharmacies();
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
              onSubmitted: (p0) {
                if (p0.trim().isNotEmpty) {
                  _pharmaciesCubit.searchPharmacyByName(p0);
                }
              },
              controller: _searchController,
              hint: 'Search for the name of the pharmacies',
              onChanged: (value) {
                if (value.trim().isEmpty) {
                  _pharmaciesCubit.fetchAllPharmacies();
                  return;
                }
                _pharmaciesCubit.searchPharmacyByName(value);
              },
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
        centerTitle: true,
        iconTheme: IconThemeData(size: 25),
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
      body: RefreshIndicator(
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        onRefresh: () async {
          _pharmaciesCubit.fetchAllPharmacies();
        },
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: BlocConsumer<PharmaciesCubit, PharmaciesState>(
            bloc: _pharmaciesCubit,
            builder: (_, state) {
              if (state.pharmacies.isEmpty) {
                return Center(
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
                );
              }
              return SizedBox(
                height: screenHeight(context) * 0.9,
                child: Skeletonizer(
                  enabled: state.status.isLoading,
                  child: RefreshIndicator(
                    onRefresh: () async {
                      _pharmaciesCubit.fetchAllPharmacies();
                    },
                    child: ListView.separated(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(16),
                      itemCount:
                          state.status.isLoading ? 5 : state.pharmacies.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 12),
                      itemBuilder: (context, index) {
                        if (state.status.isLoading) {
                          return PharmacyCard(
                            name: 'OpenGl',
                            location: 'dynamic',
                            phone: '093091203',
                            startTime: '2133',
                            endTime: '1232',
                            latitude: 23,
                            longitude: 23,
                            namelocation: 'ksaodkaos',
                          );
                        }
                        final pharmacy = state.pharmacies[index];
                        return PharmacyCard(
                          name: pharmacy.name ?? 'No pharmacy',
                          location: pharmacy.location ?? 'No location',
                          phone: pharmacy.phone ?? 'No phone',
                          startTime: pharmacy.startTime ?? 'No time',
                          endTime: pharmacy.finishTime ?? 'No time',
                          latitude:
                              double.tryParse(pharmacy.latitude ?? '12.0') ??
                              12.0,
                          longitude:
                              double.tryParse(pharmacy.longitude ?? '12.0') ??
                              12.0,
                          namelocation: pharmacy.location ?? 'No location',
                        );
                      },
                    ),
                  ),
                ),
              );
            },
            listener: (_, state) {
              if (state.status.isError) {
                Fluttertoast.showToast(msg: state.message);
              }
            },
          ),
        ),
      ),
    );
  }

  final PharmaciesCubit _pharmaciesCubit = PharmaciesCubit(
    pharmaciesRepository: PharmaciesRepository(),
  );
}
