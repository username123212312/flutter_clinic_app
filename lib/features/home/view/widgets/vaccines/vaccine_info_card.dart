import 'package:flutter/material.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../model/vaccinationrecord.dart';

class VaccineInfoCard extends StatelessWidget {
  final VaccinationRecord vaccine;
  final VoidCallback onTap;

  const VaccineInfoCard({
    super.key,
    required this.vaccine,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Pallete.grayScaleColor0,
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                overflow: TextOverflow.ellipsis,
                vaccine.vaccineName ?? 'No name',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 17,
                  color: Pallete.black1,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Dose: ${vaccine.dose ?? 'No dose'}',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 14,
                  color: Pallete.sliverSand,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'When: ${vaccine.whenToTake ?? 'No time'}',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 14,
                  color: Pallete.sliverSand,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Price: ${vaccine.price ?? 'No price'}',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 14,
                  color: Pallete.sliverSand,
                ),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: Icon(
                  (vaccine.isTaken ?? 0) == 1
                      ? Icons.check_circle
                      : Icons.schedule,
                  color: Pallete.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
