import 'package:flutter/material.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/utils/utils.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({
    super.key,
    required this.title,
    required this.iconImagePath,
    required this.listItems,
  });
  final String title;
  final String iconImagePath;
  final List<List<String>> listItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context) * 0.9,
      decoration: BoxDecoration(
        border: Border.all(color: Pallete.grayScaleColor400, width: 1),
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.all(13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(iconImagePath),
              SizedBox(width: 10),
              Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.labelSmall!.copyWith(fontSize: 15),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0, left: 5.0, top: 10),
            child: Column(
              children:
                  listItems
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          child: Row(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (listItems.length > 1)
                                    Icon(
                                      Icons.circle,
                                      size: 15,
                                      color: Pallete.grayScaleColor500,
                                    ),
                                  if (listItems.length > 1) SizedBox(width: 6),
                                  Column(
                                    children: [
                                      SizedBox(
                                        width: screenWidth(context) * 0.75,
                                        child: Text(
                                          e[0],

                                          style: Theme.of(
                                            context,
                                          ).textTheme.titleSmall!.copyWith(
                                            fontSize: 13,
                                            color: Pallete.grayScaleColor400,
                                          ),
                                        ),
                                      ),
                                      if (e.length > 1)
                                        SizedBox(
                                          width: screenWidth(context) * 0.75,
                                          child: Text(
                                            e[1],

                                            style: Theme.of(
                                              context,
                                            ).textTheme.titleSmall!.copyWith(
                                              fontSize: 13,
                                              color: Pallete.sliverSand,
                                            ),
                                          ),
                                        ),
                                      if (e.length > 2)
                                        SizedBox(
                                          width: screenWidth(context) * 0.75,
                                          child: Text(
                                            e[2],

                                            style: Theme.of(
                                              context,
                                            ).textTheme.titleSmall!.copyWith(
                                              fontSize: 13,
                                              color:
                                                  Theme.of(
                                                    context,
                                                  ).colorScheme.primary,
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
