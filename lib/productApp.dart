import 'package:flutter/material.dart';
import 'productCard.dart';

class ProductApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Товары"), backgroundColor: Colors.yellow),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: ProductCard(
                      image: "images/nike.jpeg",
                      title: "Nike Air Max",
                      price: "\$120",
                      sale: true,
                      category: "Shoes",
                      rating: 5,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: ProductCard(
                      image: "images/leatherbag.jpg",
                      title: "Leather Bag",
                      price: "\$85",
                      category: "Bags",
                      rating: 4,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: ProductCard(
                      image: "images/headphones.jpg",
                      title: "Headphones",
                      price: "\$210",
                      sale: true,
                      category: "Audio",
                      rating: 5,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: ProductCard(
                      image: "images/smartwatch.jpg",
                      title: "Smart Watch",
                      price: "\$150",
                      category: "Accessories",
                      rating: 4,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
