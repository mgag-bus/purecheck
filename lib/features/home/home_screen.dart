import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PureCheck'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Know what’s in your food.',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Text(
              'Scan or upload an ingredient list to get a simple Red / Amber / Green verdict.',
              style: TextStyle(color: Colors.black54),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: () {
                  // temporary navigation (we’ll wire real scan later)
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const _TempResultsPlaceholder()),
                  );
                },
                icon: const Icon(Icons.photo_camera_outlined),
                label: const Text('Scan your ingredients'),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const _TempLearnPlaceholder()),
                  );
                },
                icon: const Icon(Icons.menu_book_outlined),
                label: const Text('Learn / Info'),
              ),
            ),
            const SizedBox(height: 16),
            const Text('🔒 Your scans stay private.', style: TextStyle(color: Colors.black45)),
          ],
        ),
      ),
    );
  }
}

// Temporary placeholders so navigation works; we’ll replace next steps.
class _TempResultsPlaceholder extends StatelessWidget {
  const _TempResultsPlaceholder({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Results')),
        body: const Center(child: Text('Results Screen (placeholder)')),
      );
}

class _TempLearnPlaceholder extends StatelessWidget {
  const _TempLearnPlaceholder({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Learn / Info')),
        body: const Center(child: Text('Learn / Info Screen (placeholder)')),
      );
}
