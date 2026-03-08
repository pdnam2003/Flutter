import 'package:flutter/material.dart';
import '../data/database.dart';
import '../entities/category.dart';
import '../entities/product.dart';

class ProductScreen extends StatelessWidget {

  final Category category;

  const ProductScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {

    List<Product> products = Database.products
        .where((p) => p.category.id == category.id)
        .toList();

    return Scaffold(

      backgroundColor: Colors.pink[100],

      appBar: AppBar(
        title: Text(category.name),
        backgroundColor: Colors.pink[200],
      ),

      body: ListView.builder(

        padding: const EdgeInsets.all(16),
        itemCount: products.length,

        itemBuilder: (context, index) {

          var product = products[index];

          return Container(

            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(12),

            decoration: BoxDecoration(
              color: Colors.pink[200],
              borderRadius: BorderRadius.circular(20),
            ),

            child: Row(
              children: [

                /// IMAGE
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(product.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                /// TEXT
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        product.name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 6),

                      Text(
                        product.description,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),

                    ],
                  ),
                ),

                /// ICON
                const Icon(
                  Icons.arrow_downward,
                  size: 28,
                )

              ],
            ),
          );
        },
      ),
    );
  }
}