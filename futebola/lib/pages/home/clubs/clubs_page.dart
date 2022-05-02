import 'package:flutter/material.dart';

class ClubsPage extends StatelessWidget {
  const ClubsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Clubs'), centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Spacer(flex: 1,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
               Text('Escolha a liga'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
               Text('dropdown list'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
               Text('Lista dos clubes'),
            ],
          ),
          const Spacer(flex: 4,),
        ],
      ),
    );
  }
}