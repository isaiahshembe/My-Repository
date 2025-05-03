import 'package:flutter/material.dart';
import 'package:game_app/core/colors/app_colors.dart';


class TournamentDetailPage extends StatelessWidget {
  final int tournamentId;

  const TournamentDetailPage({super.key, required this.tournamentId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tournament #$tournamentId'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Tournament Banner
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/tournament_${(tournamentId % 3) + 1}.jpg',
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            // Tournament Info
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.secondary.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    'Ongoing',
                    style: TextStyle(
                      color: AppColors.secondaryDark,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Spacer(),
                const Icon(Icons.people, size: 16),
                const SizedBox(width: 4),
                Text(
                  '${tournamentId + 12} Teams',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(width: 16),
                const Icon(Icons.sports_esports, size: 16),
                const SizedBox(width: 4),
                Text(
                  'FIFA 23',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              'Uganda Esports Championship $tournamentId',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            // Prize Pool
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.primary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.emoji_events,
                    color: AppColors.tournamentGold,
                    size: 32,
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Prize Pool',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Text(
                        'UGX ${(tournamentId + 1) * 5}M',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.chevron_right),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Details Section
            const Text(
              'Tournament Details',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            _buildDetailRow(context, Icons.calendar_today, 'Date',
                'May ${15 + tournamentId} - May ${20 + tournamentId}'),
            _buildDetailRow(context, Icons.location_on, 'Venue',
                tournamentId.isEven ? 'Kampala, Uganda' : 'Nairobi, Kenya'),
            _buildDetailRow(context, Icons.schedule, 'Format', 'Double Elimination'),
            _buildDetailRow(context, Icons.rule, 'Rules', 'FIFA 23 Standard Rules'),
            const SizedBox(height: 16),
            // Organizer Section
            const Text(
              'Organizer',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            ListTile(
              leading: const CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage('assets/images/organizer.jpg'),
              ),
              title: const Text('Uganda Esports Association'),
              subtitle: const Text('Official esports body of Uganda'),
              trailing: TextButton(
                onPressed: () {
                  // TODO: Contact organizer
                },
                child: const Text('Contact'),
              ),
            ),
            const SizedBox(height: 16),
            // Action Button
            ElevatedButton(
              onPressed: () {
                // TODO: Register for tournament
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text('Register Now'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(BuildContext context, IconData icon, String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 20),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                value,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}