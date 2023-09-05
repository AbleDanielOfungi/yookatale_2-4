import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
        title: const Text("Categories"),
      ),
      body: 
      GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: const BorderSide(color: Colors.red),
            ),
            color: const Color.fromRGBO(83, 177, 117, 1),
            child: Column(
              children: [
                SizedBox(height: 150, child: Image.asset("images/fruits.png")),
                const Text(
                  "Fruits",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: const BorderSide(color: Colors.red),
            ),
            color: const Color.fromRGBO(247, 163, 77, 1),
            child: Column(
              children: [
                SizedBox(
                    height: 150, child: Image.asset("images/vegetables.png")),
                const Text(
                  "Vegetables",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: const BorderSide(color: Colors.red),
            ),
            color: const Color.fromRGBO(246, 165, 148, 1),
            child: Column(
              children: [
                SizedBox(height: 150, child: Image.asset("images/herbs.png")),
                const Text(
                  "Herbs",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: const BorderSide(color: Colors.red),
            ),
            color: const Color.fromRGBO(212, 176, 224, 1),
            child: Column(
              children: [
                SizedBox(height: 150, child: Image.asset("images/nuts.png")),
                const Text(
                  "Nuts",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: const BorderSide(color: Colors.red),
            ),
            color: const Color.fromRGBO(252, 229, 151, 1),
            child: Column(
              children: [
                SizedBox(height: 150, child: Image.asset("images/spices.png")),
                const Text(
                  "Spices",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: const BorderSide(color: Colors.red),
            ),
            color: const Color.fromRGBO(183, 224, 246, 1),
            child: Column(
              children: [
                SizedBox(height: 150, child: Image.asset("images/grains.png")),
                const Text(
                  "Grains",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}