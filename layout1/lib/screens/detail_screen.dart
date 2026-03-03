import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../entities/food.dart';

class DetailScreen extends StatefulWidget {
  final Food food;


  const DetailScreen({super.key, required this.food });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int selectBottomIndex = 0;

  @override
  Widget build(BuildContext context) {
    final food = widget.food;
    return Scaffold(
      appBar: AppBar(
        title: Text(food.name),
      ),
      body: Padding(padding: const EdgeInsets.all(16),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start
          , children: [
          Center(
            child:
            Image.asset(
              food.image,
              height: 200,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            food.name,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,),
          ),
          Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        const Icon(Icons.star, color: Colors.orange),
                        const SizedBox(height: 5),
                        Text("${food.rating}"),
                      ],
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        const Icon(Icons.access_time, color: Colors.blue),
                        const SizedBox(height: 5),
                        Text("${food.timeWait} min"),
                      ],
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        const Icon(Icons.location_on, color: Colors.red),
                        const SizedBox(height: 5),
                        Text(food.location),
                      ],
                    ),
                  ),
                ),
              ]
          ),
          const Text(
            "Description",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          const SizedBox(height: 15),
          Text(food.description),
          const SizedBox(height: 8),
          Row(
            children: [

              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: xử lý checkout
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    "Checkout",

                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),

              const SizedBox(width: 10),

              Container(
                decoration: BoxDecoration(
                  color: Colors.red.shade50,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  onPressed: () {
                    // TODO: xử lý yêu thích
                  },
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),

        ],

        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectBottomIndex,
        selectedItemColor: Colors.orange,
        backgroundColor:Colors.grey,
        onTap: (index) {
          setState(() {
            selectBottomIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}


