import 'package:bai2/navigation/app_navigation.dart';
import 'package:flutter/material.dart';
import '../data/menu_data.dart';
import '../widgets/menu_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(title: const Text('Luyen Thi GPLX'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: menuData.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemBuilder: (contex, index) {
            final item = menuData[index];
            return MenuItem(
              color: item['color'],
              icon: item['icon'],
              title: item['title'],
              onTap: () {
                AppNavigation.goTo(context, menuData[index]['router']);
              },
            );
          },
        ),
      ),
    );
  }
}
