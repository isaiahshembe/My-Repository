import 'package:flutter/material.dart';
import 'package:game_app/core/colors/app_colors.dart';


class TeamDetailPage extends StatelessWidget {
  final int teamId;

  const TeamDetailPage({super.key, required this.teamId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Team ${teamId + 1}'),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              // TODO: More options
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Team Logo and Basic Info
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/team_${(teamId % 5) + 1}.png',
                    height: 120,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Team ${teamId + 1}',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Est. 202${teamId % 3}',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.location_on, size: 16),
                      const SizedBox(width: 4),
                      Text(
                        teamId.isEven ? 'Kampala, Uganda' : 'Nairobi, Kenya',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // Social Media
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Image.asset(
                          'assets/icons/twitter.png',
                          width: 24,
                        ),
                        onPressed: () {
                          // TODO: Open Twitter
                        },
                      ),
                      IconButton(
                        icon: Image.asset(
                          'assets/icons/instagram.png',
                          width: 24,
                        ),
                        onPressed: () {
                          // TODO: Open Instagram
                        },
                      ),
                      IconButton(
                        icon: Image.asset(
                          'assets/icons/facebook.png',
                          width: 24,
                        ),
                        onPressed: () {
                          // TODO: Open Facebook
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // Team Stats
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  const Text(
                    'Team Statistics',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildStatItem('Tournaments', '${teamId + 7}'),
                      _buildStatItem('Wins', '${teamId + 3}'),
                      _buildStatItem('Losses', '${teamId % 3}'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Team Members
            const Text(
              'Players',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage(
                      'assets/images/player_${(index % 3) + 1}.jpg',
                    ),
                  ),
                  title: Text('Player ${index + 1}'),
                  subtitle: Text(
                    index == 0 ? 'Captain' : 'Member',
                  ),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    // TODO: Show player profile
                  },
                );
              },
            ),
            const SizedBox(height: 16),
            // Recent Matches
            const Text(
              'Recent Matches',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Team ${teamId + 1}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: index == 0
                                ? AppColors.success
                                : index == 1
                                    ? AppColors.error
                                    : null,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            index == 0 ? '3 - 1' : index == 1 ? '0 - 2' : '1 - 1',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            index == 0
                                ? 'Win'
                                : index == 1
                                    ? 'Loss'
                                    : 'Draw',
                            style: TextStyle(
                              fontSize: 12,
                              color: index == 0
                                  ? AppColors.success
                                  : index == 1
                                      ? AppColors.error
                                      : AppColors.grey,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Text(
                          'Team ${(teamId + index + 2) % 10 + 1}',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            // Contact Button
            OutlinedButton(
              onPressed: () {
                // TODO: Contact team
              },
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text('Contact Team'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatItem(String title, String value) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}