import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/theme/app_pallete.dart';

class VisitedPatientCard extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String age;
  final String address;
  final VoidCallback? onTap;

  const VisitedPatientCard({
    super.key,
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.address,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Pallete.grayScaleColor200,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$firstName $lastName',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontSize: 15,
              color: Pallete.black1,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Age: $age',
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
              fontSize: 13,
              color: Pallete.grayScaleColor500,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            address,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
              fontSize: 13,
              color: Pallete.grayScaleColor500,
            ),
          ),
          SizedBox(height: 4),
          Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                  color: Pallete.primaryColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  FontAwesomeIcons.arrowUp,
                  color: Pallete.grayScaleColor0,
                  size: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
