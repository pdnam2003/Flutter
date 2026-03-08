import '../entities/category.dart';
import '../entities/product.dart';

class Database {

  static List<Category> categories = [
    Category(id: 1, name: "Bánh ngọt"),
    Category(id: 2, name: "Bánh quy"),
    Category(id: 3, name: "Nước giải khát"),
    Category(id: 4, name: "Bánh kem"),
    Category(id: 5, name: "Bánh mì ngọt"),
    Category(id: 6, name: "Bánh tart"),
    Category(id: 7, name: "Bánh cupcake"),
    Category(id: 8, name: "Bánh sandwich"),
    Category(id: 9, name: "Nước trái cây"),
  ];

  static List<Product> products = [
    Product(
      id: 1,
      name: "Bánh ngọt Socola",
      category: Category(id: 1, name: "Bánh ngọt"),
      image: "assets/images/a.jfif",
      description: "Bánh ngọt socola đậm đà hương vị.",
    ),
    Product(
      id: 2,
      name: "Bánh quy Bơ",
      category: Category(id: 2, name: "Bánh quy"),
      image: "assets/images/a.jfif",
      description: "Bánh quy bơ giòn thơm ngon.",
    ),
    Product(
      id: 3,
      name: "Nước chanh",
      category: Category(id: 3, name: "Nước giải khát"),
      image: "assets/images/a.jfif",
      description: "Nước chanh tươi mát cho ngày hè.",
    ),
    Product(
      id: 4,
      name: "Bánh kem Dâu",
      category: Category(id: 4, name: "Bánh kem"),
      image: "assets/images/a.jfif",
      description: "Bánh kem dâu tươi ngon, ngọt ngào.",
    ),
    Product(
      id: 5,
      name: "Bánh mì Ngọt",
      category: Category(id: 1, name: "Bánh ngọt"),
      image: "assets/images/a.jfif",
      description: "Bánh mì ngọt ấm áp và thơm ngon.",
    ),
    Product(
      id: 6,
      name: "Bánh tart Trái cây",
      category: Category(id: 4, name: "Bánh tart"),
      image: "assets/images/a.jfif",
      description: "Bánh tart trái cây tươi mát.",
    ),
    Product(
      id: 7,
      name: "Bánh cupcake Socola",
      category: Category(id: 1, name: "Bánh cupcake"),
      image: "assets/images/a.jfif",
      description: "Bánh cupcake socola thơm ngon.",
    ),
    Product(
      id: 8,
      name: "Bánh sandwich Phô mai",
      category: Category(id: 2, name: "Bánh sandwich"),
      image: "assets/images/a.jfif",
      description: "Bánh sandwich phô mai hấp dẫn.",
    ),
    Product(
      id: 9,
      name: "Nước trái cây Mix",
      category: Category(id: 3, name: "Nước trái cây"),
      image: "assets/images/a.jfif",
      description: "Nước trái cây mix tươi ngon.",
    ),
    Product(
      id: 10,
      name: "Bánh quy Chocolate Chip",
      category: Category(id: 2, name: "Bánh quy"),
      image: "assets/images/a.jfif",
      description: "Bánh quy chocolate chip giòn tan.",
    ),
    Product(
      id: 11,
      name: "Bánh ngọt Matcha",
      category: Category(id: 1, name: "Bánh ngọt"),
      image: "assets/images/a.jfif",
      description: "Bánh ngọt vị matcha thơm ngon.",
    ),
    Product(
      id: 12,
      name: "Nước dừa tươi",
      category: Category(id: 3, name: "Nước giải khát"),
      image: "assets/images/a.jfif",
      description: "Nước dừa tươi ngon mát lạnh.",
    ),
    Product(
      id: 13,
      name: "Bánh nhân đậu đỏ",
      category: Category(id: 4, name: "Bánh kem"),
      image: "assets/images/a.jfif",
      description: "Bánh kem nhân đậu đỏ truyền thống.",
    ),
    Product(
      id: 14,
      name: "Bánh mì Hạt điều",
      category: Category(id: 1, name: "Bánh ngọt"),
      image: "assets/images/a.jfif",
      description: "Bánh mì hạt điều thơm ngon.",
    ),
    Product(
      id: 15,
      name: "Bánh xốp",
      category: Category(id: 2, name: "Bánh quy"),
      image: "assets/images/a.jfif",
      description: "Bánh xốp nhẹ nhàng, giòn tan.",
    ),
    Product(
      id: 16,
      name: "Trà sữa",
      category: Category(id: 3, name: "Nước giải khát"),
      image: "assets/images/a.jfif",
      description: "Trà sữa béo ngậy với trân châu.",
    ),
    Product(
      id: 17,
      name: "Bánh pancake",
      category: Category(id: 1, name: "Bánh ngọt"),
      image: "assets/images/a.jfif",
      description: "Bánh pancake mềm mịn, ăn kèm siro.",
    ),
    Product(
      id: 18,
      name: "Nước ép Cam",
      category: Category(id: 3, name: "Nước trái cây"),
      image: "assets/images/a.jfif",
      description: "Nước ép cam tự nhiên, tươi ngon.",
    ),
  ];

}