import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:our_flutter_clinic_app/core/widgets/custom_cached_network_image.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import '../../../../../core/blocs/user_bloc/user_bloc.dart';
import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/general_utils.dart';
import 'info_row.dart';

class DoctorCardProfile extends StatelessWidget {
  const DoctorCardProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context) * 0.35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [
          BoxShadow(
            color: Pallete.grayScaleColor300,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return Row(
            children: [
              Container(
                width: screenWidth(context) * 0.29,
                decoration: BoxDecoration(
                  color: Pallete.primaryColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(18),
                    bottomLeft: Radius.circular(18),
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: screenWidth(context) * 0.3,
                    height: screenHeight(context) * 0.18,
                    child:
                        state.user?.photo == null
                            ? Image.asset(
                              'assets/images/Jennifer_Miller.png',
                              fit: BoxFit.cover,
                            )
                            : CustomCachedNetworkImage(
                              imagePath: state.user?.photo ?? '',
                            ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    color: Pallete.grayScaleColor0,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(18),
                      bottomRight: Radius.circular(18),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${state.user?.firstName ?? 'No'} ${state.user?.lastName ?? 'User'}',
                        style: Theme.of(context).textTheme.titleMedium!
                            .copyWith(fontSize: 16, color: Pallete.black1),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        state.user?.speciality ?? 'No speciality',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontSize: 13,
                          color: Pallete.sliverSand,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          const Icon(Icons.star, size: 18, color: Pallete.star),
                          const SizedBox(width: 4),
                          Text(
                            (state.user?.finalRate ?? 0.0).toString(),
                            style: Theme.of(context).textTheme.labelSmall!
                                .copyWith(fontSize: 13, color: Pallete.black1),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      InfoRow(
                        label1: 'Clinic',
                        value1: state.user?.clinic ?? 'No clinic',
                        label2: 'Visit Fee',
                        value2: '\$ ${state.user?.visitFee}',
                      ),
                      InfoRow(
                        label1: 'Visit Time',
                        value1: state.user?.averageVisitDuration ?? '0 mins',
                        label2: 'Experience',
                        value2:
                            state.user?.experience.toString() ??
                            'No experience',
                      ),
                      InfoRow(
                        label1: 'Treated',
                        value1: (state.user?.treated ?? 0).toString(),
                        label2: 'Status',
                        value2: state.user?.status ?? 'No status',
                      ),
                      const SizedBox(height: 3),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Signature',
                                style: Theme.of(
                                  context,
                                ).textTheme.titleSmall!.copyWith(
                                  fontSize: 11,
                                  color: Pallete.sliverSand,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Image.asset(
                                'assets/images/signature.jpg',
                                width: 25,
                                height: 25,
                              ),
                            ],
                          ),
                          SizedBox(width: screenWidth(context) * 0.16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Booking type',
                                style: Theme.of(
                                  context,
                                ).textTheme.titleSmall!.copyWith(
                                  fontSize: 11,
                                  color: Pallete.sliverSand,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                state.user?.bookingType ?? 'No type',
                                style: Theme.of(
                                  context,
                                ).textTheme.titleMedium!.copyWith(
                                  fontSize: 13,
                                  color: Pallete.black1,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
