import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik_app/presentation/provider/discover_provider.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final discoverProvider = context.watch<DiscoverProvider>();

    return Scaffold(
      body: discoverProvider.initialLoading
        ? const Center( child: CircularProgressIndicator( strokeWidth: 2))
        : const Placeholder(),
    );
  }
}