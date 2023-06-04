import 'package:flutter/material.dart';

import 'tabs/tab_view.dart';

// Tela principal -> todos os widgtes tão aqui
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
          child: Column(
            children: [
              TabView(),
            ],
          ),
        ),
      ),
    );
  }
}
