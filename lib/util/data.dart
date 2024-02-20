import 'package:shoety/util/constant.dart';

class ShoeShape {
  int? id;
  String? name;

  ShoeShape({this.id, this.name});
}

// Tabs
List bestSellerTab = [
  // Best Seller
  {
    "category": bestSeller,
    "imgPath": "assets/best-seller-1.png",
    "name": "Air Panda",
    "price": "P4,322",
    "path": "",
  },
  {
    "category": bestSeller,
    "imgPath": "assets/best-seller-2.png",
    "name": "Air Fore 1'07",
    "price": "P5,122",
    "path": "",
  },
  {
    "category": bestSeller,
    "imgPath": "assets/best-seller-3.png",
    "name": "Dunk Low Retro",
    "price": "P5,495",
    "path": "",
  },
  {
    "category": bestSeller,
    "imgPath": "assets/best-seller-4.png",
    "name": "Dunk Low SE",
    "price": "P6,895",
    "path": "",
  },
  {
    "category": bestSeller,
    "imgPath": "assets/best-seller-5.png",
    "name": "Zoom Vomero 5",
    "price": "P8,895",
    "path": "",
  },
];

List menTab = [
  // Men
  {
    "category": men,
    "imgPath": "assets/men-2.png",
    "name": "Nike Calm",
    "price": "P2,595",
    "path": "",
  },
  {
    "category": men,
    "imgPath": "assets/men-1.png",
    "name": "Jordan 1 Craft",
    "price": "P8,895",
    "path": "",
  },
  {
    "category": men,
    "imgPath": "assets/men-3.png",
    "name": "Jordan 1 Low",
    "price": "P6,195",
    "path": "",
  },
];

List womenTab = [
  // Women
  {
    "category": women,
    "imgPath": "assets/women-1.png",
    "name": "Gamma Force",
    "price": "P4,995",
    "path": "",
  },
  {
    "category": women,
    "imgPath": "assets/women-2.png",
    "name": "Flip-Flops",
    "price": "P2,595",
    "path": "",
  },
  {
    "category": women,
    "imgPath": "assets/women-3.png",
    "name": "Nike Calm",
    "price": "P3,695",
    "path": "",
  },
  {
    "category": women,
    "imgPath": "assets/women-4.png",
    "name": "Flyknit Haven",
    "price": "P6,895",
    "path": "",
  },
];

// dynamic getFilteredData(String category) {
//   bool isValid = category == men || category == women || category == bestSeller;
//   if (!isValid) {
//     return;
//   }

//   // var products = bestSellerTab.map((value) {
//   //   // print('value $value');

//   //   // if (value["category"] == category) {
//   //   //   return {
//   //   //     "category": category,
//   //   //     ...value,
//   //   //   };
//   //   // } else {
//   //   //   return null;
//   //   // }
//   // });

//   Iterable<dynamic> prod = bestSellerTab
//       .where((bestSeller) => bestSeller['category'].contains(category));

//   // print('prod $prod');

//   // print('product $products $category');

//   return prod;
// }
