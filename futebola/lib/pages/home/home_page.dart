import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Futebola'), centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(onPressed: () => Get.toNamed('/clubs'),
                     child: const Text('Clubs', style: TextStyle(fontSize: 20),)
          ),
          TextButton(onPressed: () => Get.toNamed('/leagues'),
                     child: const Text('Leagues', style: TextStyle(fontSize: 20),)
          ),
          TextButton(onPressed: () => Get.toNamed('/yourteam'),
                     child: const Text('Your Team', style: TextStyle(fontSize: 20),)
          ),
          
      ]),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.sports_soccer,),
        ),
        BottomNavigationBarItem(icon: Icon(Icons.sports_soccer,),
        ),
        BottomNavigationBarItem(icon: Icon(Icons.sports_soccer,),
        ),
      ]),
    );
  }
}