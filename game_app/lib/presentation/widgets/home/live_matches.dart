import 'package:flutter/material.dart';
import 'package:game_app/core/colors/app_colors.dart';


class LiveMatchesSection extends StatelessWidget {
  const LiveMatchesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            width: 280,
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Theme.of(context).colorScheme.surface,
              border: Border.all(
                color: AppColors.liveIndicator.withOpacity(0.3),
                width: 1,
              ),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 24,
                                backgroundImage: AssetImage(
                                  'images/download.jpeg'),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Team ${index + 1}',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.secondary.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  '${index + 1} - ${index}',
                                  style: TextStyle(
                                    color: AppColors.secondaryDark,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Live',
                                style: TextStyle(
                                  color: AppColors.liveIndicator,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 24,
                                backgroundImage: AssetImage(
                                  'images/download.jpeg'),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Team ${index + 2}',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      LinearProgressIndicator(
                        value: 0.6,
                        backgroundColor: AppColors.greyLight,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          AppColors.liveIndicator,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Best of 3',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            'FIFA 23',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Icon(
                    Icons.live_tv,
                    color: AppColors.liveIndicator,
                    size: 16,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}