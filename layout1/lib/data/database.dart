import '../entities/user.dart';
import '../entities/category.dart';
import '../entities/food.dart';

class Database {

  static User currentUser = User(
    id: 1,
    name: "dai ca PHAM DUY NAM",
    avatar: "assets/images/img.png",
  );


  static List<Category> categories = [
    Category(id: 1, name: "Popular"),
    Category(id: 2, name: "Indian"),
    Category(id: 3, name: "Chinese"),
    Category(id: 4, name: "Japanese"),
  ];


  static List<Food> foods = [
    Food(
      id: 1,
      name: "Sandwich",
      categoryId: 1,
      price: 150.0,
      rating: 4.5,
      timeWait: 30,
      distance: 12,
      location: "Location, City",
      description: "Delicious sandwich with fresh ingredi"
          "fgdsgs"
          "fdsf"
          "ds"
          "fdsf"
          "d"
          "fds"
          "fds"
          "fd"
          "fds"
          "fsd"
          "fds"
          "fds"
          "f"
          "dg"
          "dh"
          "sdfghgfhjfghujifghsduifhuidfbhhujidbfisdbjkfsents.",
      image: "assets/images/img.png",
    ),
    Food(
      id: 2,
      name: "Kebab",
      categoryId: 2,
      price: 250.0,
      rating: 4.2,
      timeWait: 25,
      distance: 8,
      location: "Location, City",
      description: "Tasty grilled kebab with spices.",
      image: "assets/images/img.png",
    ),
    Food(
      id: 3,
      name: "Juice",
      categoryId: 1,
      price: 80.0,
      rating: 4.0,
      timeWait: 10,
      distance: 5,
      location: "Location, City",
      description: "Fresh fruit juice.",
      image: "assets/images/img.png",
    ),
    Food(
      id: 4,
      name: "Egg Items",
      categoryId: 3,
      price: 250.0,
      rating: 3.9,
      timeWait: 20,
      distance: 6,
      location: "Location, City",
      description: "Delicious egg dishes.",
      image: "assets/images/img.png",
    ),
    Food(
      id: 5,
      name: "Pasta",
      categoryId: 2,
      price: 300.0,
      rating: 4.5,
      timeWait: 15,
      distance: 5,
      location: "Location, City",
      description: "Tasty pasta prepared with fresh ingredients.",
      image: "assets/images/img.png",
    ),
    Food(
      id: 6,
      name: "Salad",
      categoryId: 1,
      price: 150.0,
      rating: 4.0,
      timeWait: 10,
      distance: 4,
      location: "Location, City",
      description: "Fresh and healthy salad varieties.",
      image: "assets/images/img.png",

    ),
    Food(
      id: 7,
      name: "Steak",
      categoryId: 3,
      price: 450.0,
      rating: 5.0,
      timeWait: 25,
      distance: 8,
      location: "Location, City",
      description: "Juicy steak cooked to perfection.",
      image: "assets/images/img.png",
    ),
    Food(
      id: 8,
      name: "Pizza",
      categoryId: 2,
      price: 350.0,
      rating: 4.2,
      timeWait: 20,
      distance: 7,
      location: "Location, City",
      description: "Delicious pizza with various toppings.",
      image: "assets/images/img.png",
    ),
    Food(
      id: 9,
      name: "Burger",
      categoryId: 1,
      price: 200.0,
      rating: 4.1,
      timeWait: 12,
      distance: 3,
      location: "Location, City",
      description: "Juicy burgers with fresh vegetables.",
      image: "assets/images/img.png",
    ),
    Food(
      id: 10,
      name: "Sushi",
      categoryId: 4,
      price: 400.0,
      rating: 4.8,
      timeWait: 30,
      distance: 10,
      location: "Location, City",
      description: "Authentic sushi rolls and sashimi.",
      image: "assets/images/img.png",
   ),
    Food(
      id: 11,
      name: "Butter Chicken",
      categoryId: 2,
      price: 320.0,
      rating: 4.7,
      timeWait: 35,
      distance: 9,
      location: "Mumbai, India",
      description: "Creamy and rich butter chicken with naan.",
      image: "assets/images/img.png",
    ),

    Food(
      id: 12,
      name: "Fried Rice",
      categoryId: 3,
      price: 180.0,
      rating: 4.3,
      timeWait: 18,
      distance: 6,
      location: "Beijing, China",
      description: "Classic Chinese fried rice with vegetables and egg.",
      image: "assets/images/img.png",
    ),

    Food(
      id: 13,
      name: "Ramen",
      categoryId: 4,
      price: 280.0,
      rating: 4.6,
      timeWait: 22,
      distance: 7,
      location: "Tokyo, Japan",
      description: "Hot ramen noodles with rich pork broth.",
      image: "assets/images/img.png",
    ),

    Food(
      id: 14,
      name: "Tacos",
      categoryId: 1,
      price: 210.0,
      rating: 4.4,
      timeWait: 15,
      distance: 5,
      location: "Mexico City, Mexico",
      description: "Spicy beef tacos with fresh salsa.",
      image: "assets/images/img.png",
    ),

    Food(
      id: 15,
      name: "Dim Sum",
      categoryId: 3,
      price: 260.0,
      rating: 4.5,
      timeWait: 20,
      distance: 6,
      location: "Shanghai, China",
      description: "Steamed dumplings filled with pork and shrimp.",
      image: "assets/images/img.png",
    ),

    Food(
      id: 16,
      name: "Tempura",
      categoryId: 4,
      price: 300.0,
      rating: 4.4,
      timeWait: 18,
      distance: 5,
      location: "Osaka, Japan",
      description: "Crispy deep-fried seafood and vegetables.",
      image: "assets/images/img.png",
    ),

    Food(
      id: 17,
      name: "Biryani",
      categoryId: 2,
      price: 290.0,
      rating: 4.8,
      timeWait: 30,
      distance: 8,
      location: "Hyderabad, India",
      description: "Spiced rice with tender chicken and herbs.",
      image: "assets/images/img.png",
    ),

    Food(
      id: 18,
      name: "Hotpot",
      categoryId: 3,
      price: 500.0,
      rating: 4.9,
      timeWait: 40,
      distance: 12,
      location: "Chongqing, China",
      description: "Traditional spicy hotpot with assorted meats.",
      image: "assets/images/img.png",
    ),

    Food(
      id: 19,
      name: "Udon",
      categoryId: 4,
      price: 240.0,
      rating: 4.2,
      timeWait: 15,
      distance: 4,
      location: "Kyoto, Japan",
      description: "Thick wheat noodles served in light broth.",
      image: "assets/images/img.png",
    ),

    Food(
      id: 20,
      name: "Falafel",
      categoryId: 1,
      price: 170.0,
      rating: 4.1,
      timeWait: 12,
      distance: 3,
      location: "Middle East",
      description: "Crispy chickpea balls served with tahini sauce.",
      image: "assets/images/img.png",
    ),
  ];
}