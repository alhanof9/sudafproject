import 'package:flutter/material.dart';
import 'package:testapp/data/notifiers.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: selectedPageNotifier, builder: 
    (context, selectedPage, child) {
      return NavigationBar(
       backgroundColor: const Color.fromARGB(255, 252, 248, 238),        
        destinations: [
          NavigationDestination(icon: Icon(Icons.description), label: ''),
          NavigationDestination(icon: Icon(Icons.business_center), label: ''),
          NavigationDestination(icon: Icon(Icons.home), label: ''),  
          NavigationDestination(icon: Icon(Icons.school), label: ''),
          NavigationDestination(icon: Icon(Icons.calendar_today), label: ''),
          NavigationDestination(icon: Icon(Icons.security), label: ''),

        ],
        onDestinationSelected: (int value) {
          selectedPageNotifier.value = value;
        },
        selectedIndex: selectedPage,
      );
    });
  }
}
