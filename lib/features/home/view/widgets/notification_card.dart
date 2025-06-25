import 'package:flutter/material.dart';

import '../../../../core/theme/app_pallete.dart';

class NotificationCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onDelete;

  const NotificationCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(title),
      direction: DismissDirection.endToStart,
      onDismissed: (_) => onDelete(),
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Pallete.grayScaleColor200,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Icon(Icons.delete, color: Pallete.black1),
      ),
      child: Card(
        color: Pallete.grayScaleColor200,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/icons/notification.png',
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Theme.of(context).colorScheme.primary,
                      width: 20,
                      height: 20,
                    );
                  },
                  width: 20,
                  height: 20,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            title,
                            style: Theme.of(context).textTheme.titleMedium!
                                .copyWith(fontSize: 14, color: Pallete.black1),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontSize: 13,
                        color: Pallete.sliverSand,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
