import 'package:flutter/material.dart';
import 'package:game_app/core/colors/app_colors.dart';


class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {'name': 'FIFA', 'icon': Icons.sports_soccer},
      {'name': 'Call of Duty', 'icon': Icons.games},
      {'name': 'Fortnite', 'icon': Icons.gamepad},
      {'name': 'PUBG', 'icon': Icons.smartphone},
      {'name': 'Dota 2', 'icon': Icons.computer},
      {'name': 'More', 'icon': Icons.more_horiz},
    ];

    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            width: 80,
            margin: EdgeInsets.only(
              right: index == categories.length - 1 ? 0 : 16,
            ),
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    categories[index]['icon'] as IconData,
                    size: 30,
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  categories[index]['name'] as String,
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}