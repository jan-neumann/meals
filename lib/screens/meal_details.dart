import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:transparent_image/transparent_image.dart';

final class MealDetails extends StatelessWidget {
  const MealDetails({
    super.key,
    required this.meal,
  });
  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Column(
        children: [
          FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: NetworkImage(meal.imageUrl),
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
