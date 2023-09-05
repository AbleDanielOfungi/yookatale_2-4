import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  final String productName;
  final String productImageURL;
  final double productPrice;
  final String productQuantity;
  final String productDetails;

  ProductDetailsScreen({
    required this.productName,
    required this.productImageURL,
    required this.productPrice,
    required this.productQuantity,
    required this.productDetails,
  });

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.productName),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Image.network(
                widget.productImageURL,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                'Product Name: ${widget.productName}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Price: Ugx${widget.productPrice.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Quantity: ${widget.productQuantity}',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),

              Text('Product Details',
              style: TextStyle(
                fontSize: 30
                ),
              ),

              Text(
                ' ${widget.productDetails}',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 100,
              ),

              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green.shade300,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Add to Cart'),
                    Icon(Icons.shopping_cart),
                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
