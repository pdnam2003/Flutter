import 'package:flutter/material.dart';

import '../data/database.dart';
import '../entities/food.dart';
import '../entities/category.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectCategoryId = 1;
  int selectBottomIndex = 0;
  String searchText = "";

  int currentPage = 1;
  int itemsPerPage = 4;

  @override
  Widget build(BuildContext context) {

    final categories = Database.categories;

    List<Food> filteredFood = Database.foods
        .where((food) {

      if (selectCategoryId == 1) {
        return food.name
            .toLowerCase()
            .contains(searchText.toLowerCase());
      }

      return food.categoryId == selectCategoryId &&
          food.name
              .toLowerCase()
              .contains(searchText.toLowerCase());

    }).toList();

    int totalPages = (filteredFood.length / itemsPerPage).ceil();  // FIX

    if (totalPages == 0) totalPages = 1; // FIX: tránh lỗi chia trang khi không có data

    if (currentPage > totalPages) {      // FIX: tránh lỗi vượt trang
      currentPage = totalPages;
    }

    int startIndex = (currentPage - 1) * itemsPerPage;
    int endIndex = startIndex + itemsPerPage;

    List<Food> paginatedFoods = filteredFood.sublist(   // FIX: sửa tên filteredFoods -> filteredFood
        startIndex,
        endIndex > filteredFood.length
            ? filteredFood.length
            : endIndex);

    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        backgroundColor: Colors.orange[200],
        elevation: 0,
        title: Text("Hello, ${Database.currentUser.name}"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: CircleAvatar(
              backgroundImage: AssetImage(Database.currentUser.avatar),
            ),
          ),
        ],
      ),

      body: Column(
        children: [

          /// SEARCH
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(
                hintText: "search food ...",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: (value) {
                setState(() {
                  searchText = value;
                  currentPage = 1;   // FIX: reset về trang 1 khi search
                });
              },
            ),
          ),

          /// CATEGORY
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                final isSelected = selectCategoryId == category.id;

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectCategoryId = category.id;  // FIX: dùng = thay vì ==
                      currentPage = 1;                 // FIX: reset trang khi đổi category
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.orange : Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      category.name,
                      style: TextStyle(
                        color: isSelected ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 10),

          /// GRID + PAGINATION
          Expanded(
            child: Column(
              children: [

                /// GRID
                Expanded(
                  child: GridView.builder(
                    padding: const EdgeInsets.all(12),
                    itemCount: paginatedFoods.length,   // FIX
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (context, index) {
                      final food = paginatedFoods[index];  // FIX

                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => DetailScreen(food: food),
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Colors.grey.shade300,
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Image.asset(food.image),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                food.name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("\$${food.price}"),
                              Row(
                                children: [
                                  const Icon(Icons.star,
                                      size: 16,
                                      color: Colors.orange),
                                  Text(food.rating.toString()),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),

                /// PAGINATION BUTTON
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: currentPage > 1
                          ? () {
                        setState(() {
                          currentPage--;
                        });
                      }
                          : null,
                      icon: const Icon(Icons.arrow_back_ios),
                    ),

                    Text(
                      "Page $currentPage / $totalPages",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold),
                    ),

                    IconButton(
                      onPressed: currentPage < totalPages
                          ? () {
                        setState(() {
                          currentPage++;
                        });
                      }
                          : null,
                      icon: const Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),

                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
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