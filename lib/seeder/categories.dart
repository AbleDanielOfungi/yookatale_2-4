import 'package:cloud_firestore/cloud_firestore.dart';

class CategorySeeder {
  final categories = FirebaseFirestore.instance.collection("categories");

  herbs() async {
    final herbs = {
      "name": "Herbs",
      "imageUrl": "https://i.ibb.co/Dgqwdbk/herbs.png",
      "red": 246,
      "green": 165,
      "blue": 148
    };
    await categories.add(herbs);
  }

  nuts() async {
    final nuts = {
      "name": "Nuts",
      "imageUrl": "https://i.ibb.co/Wc6sHV8/nuts.png",
      "red": 212,
      "green": 176,
      "blue": 224
    };
    await categories.add(nuts);
  }

  fruits() async {
    final fruits = {
      "name": "Fruits",
      "imageUrl": "https://i.ibb.co/w4h4R6g/fruits.png",
      "red": 83,
      "green": 177,
      "blue": 117
    };
    await categories.add(fruits).then((DocumentReference doc) async {
      final fruitProducts = categories.doc(doc.id).collection("products");
      final grapes = {
        "name": "Grapes",
        "imageUrl": "https://i.ibb.co/w4h4R6g/fruits.png",
        "price": 0.10,
        "crossedPrice": 1.50,
        "Weight": 1,
        "unit": "KG"
      };
      await fruitProducts.add(grapes);
    });
  }

  grains() async {
     final grains = {
      "name": "Grains",
      "imageUrl": "https://i.ibb.co/tPLHJ7k/grains.png",
      "red": 183,
      "green": 224,
      "blue": 246
    };
    await categories.add(grains).then((DocumentReference doc) async {
      final grainProducts = categories.doc(doc.id).collection("products");
      final maize = {
        "name": "Maize",
        "imageUrl": "https://i.ibb.co/tPLHJ7k/grains.png",
        "price": 3.10,
        "crossedPrice": null,
        "Weight": 1,
        "unit": "KG"
      };
      await grainProducts.add(maize);
    });
  }

   vegetables() async {
     final vegetables = {
      "name": "Vegetables",
      "imageUrl": "https://i.ibb.co/RT6dtMn/vegetables.png",
      "red": 247,
      "green": 163,
      "blue": 77
    };
    await categories.add(vegetables).then((DocumentReference doc) async {
      final vegetableProducts = categories.doc(doc.id).collection("products");
      final tomatos = {
        "name": "tomatos",
        "imageUrl": "https://i.ibb.co/RT6dtMn/vegetables.png",
        "price": 2.60,
        "crossedPrice": null,
        "Weight": 1,
        "unit": "KG"
      };
      final trial = {
        "name": "trial",
        "imageUrl": "https://i.ibb.co/RT6dtMn/vegetables.png",
        "price": 2.20,
        "crossedPrice": null,
        "Weight": 1,
        "unit": "KG"
      };
      await vegetableProducts.add(tomatos);
      await vegetableProducts.add(trial);
    });
  }

  spices() async {
     final spices = {
      "name": "Spices",
      "imageUrl": "https://i.ibb.co/3MkbzRf/spices.png",
      "red": 252,
      "green": 229,
      "blue": 151
    };
    await categories.add(spices).then((DocumentReference doc) async {
      final spiceProducts = categories.doc(doc.id).collection("products");
      final cowrie = {
        "name": "Cowrie",
        "imageUrl": "https://i.ibb.co/3MkbzRf/spices.png",
        "price": 0.10,
        "crossedPrice": 4.40,
        "Weight": 1,
        "unit": "KG"
      };
      final beans = {
        "name": "beans",
        "imageUrl": "https://i.ibb.co/3MkbzRf/spices.png",
        "price": 0.10,
        "crossedPrice": 5.10,
        "Weight": 1,
        "unit": "KG"
      };
      await spiceProducts.add(cowrie);
      await spiceProducts.add(beans);
    });
  }
}
