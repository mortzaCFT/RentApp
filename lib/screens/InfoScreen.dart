import 'package:flutter/material.dart';
import 'package:rentapp/data/data.dart';

class InfoScreen extends StatelessWidget {
  final HouseModel house;

  InfoScreen({required this.house});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.asset(house.imageUrl),
            Text(
              'Name: ${house.name}',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Bedrooms: ${house.bedrooms}',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Bathrooms: ${house.bathrooms}',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Price: \$${house.price.toString()} / Year',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}