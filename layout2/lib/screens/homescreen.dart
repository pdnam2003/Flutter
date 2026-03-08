import 'package:flutter/material.dart';
import '../data/database.dart';
import 'product_screen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],

      appBar: AppBar(
        title: const Text("Food Menu"),
        backgroundColor: Colors.pink[200],
      ),

      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: Database.categories.length,

        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 0.7, // quan trọng để grid đẹp
        ),

        itemBuilder: (context, index) {

          var category = Database.categories[index];

          return GestureDetector(

            onTap: () {

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProductScreen(category: category),
                ),
              );

            },

            child: Column(
              children: [

                /// Image category
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/b.jfif"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 5),

                /// Category name
                Text(
                  category.name,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ],
            ),
          );
        },
      ),
    );
  }
}