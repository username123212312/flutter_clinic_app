import 'package:flutter/material.dart';
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
      child: Row(
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
                child: Image.asset(
                  'assets/images/Jennifer_Miller.png',
                  fit: BoxFit.cover,
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
                    'Dr. David Green',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 16,
                      color: Pallete.black1,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Cardiologist',
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
                        '4.0',
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          fontSize: 13,
                          color: Pallete.black1,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  const InfoRow(
                    label1: 'Clinic',
                    value1: 'Heart',
                    label2: 'Visit Fee',
                    value2: '\$75',
                  ),
                  const InfoRow(
                    label1: 'Visit Time',
                    value1: '30 mins',
                    label2: 'Experience',
                    value2: '7 yrs',
                  ),
                  const InfoRow(
                    label1: 'Treated',
                    value1: '74+',
                    label2: 'Status',
                    value2: 'Available',
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
                            'Manual',
                            style: Theme.of(context).textTheme.titleMedium!
                                .copyWith(fontSize: 13, color: Pallete.black1),
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
      ),
    );
  }
}
