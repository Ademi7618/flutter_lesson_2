import 'package:flutter/material.dart';
import 'constants.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final bool sale;

  final String category;
  final int rating;

  ProductCard({
    required this.image,
    required this.title,
    required this.price,
    required this.category,
    required this.rating,
    this.sale = false,
  });

  // Генерация звёзд рейтинга
  List<Widget> _buildStars(int rating) {
    return List.generate(
      5,
      (i) => Icon(
        i < rating ? Icons.star : Icons.star_border,
        size: 16,
        color: Colors.amber,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.all(paddingSize),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(cardRadius),

        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 1,
            offset: Offset(0, 4),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(cardRadius),
                child: Image.asset(
                  image,
                  height: imageHeight,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              if (sale)
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "SALE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),

          SizedBox(height: 10),

          Row(
            children: [
              Flexible(
                child: Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  maxLines: 1,
                ),
              ),
              Spacer(),
              Text(
                price,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: priceColor,
                ),
              ),
            ],
          ),

          SizedBox(height: 8),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                category,
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ),

          SizedBox(height: 8),

          Row(children: _buildStars(rating)),

          SizedBox(height: 12),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: () {}, child: Text('Купить')),
          ),

          SizedBox(height: 8),

          SizedBox(
            width: double.infinity,
            child: OutlinedButton(onPressed: () {}, child: Text("В избранное")),
          ),
        ],
      ),
    );
  }
}
