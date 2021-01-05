import 'package:eatmore/screen/home/component/category_card.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Size size;
  const CategoryItem({
    Key key,
    @required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CategoryCard(
            size: size,
            position: 1,
            categoryName: 'Burger',
            categoryImage: 'assets/burger.png',
          ),
          CategoryCard(
            size: size,
            position: 2,
            categoryName: 'Cake',
            categoryImage: 'assets/chocolate-flower-cupcake.png',
          ),
          CategoryCard(
            size: size,
            position: 3,
            categoryName: 'Drink',
            categoryImage: 'assets/drinks.png',
          ),
          CategoryCard(
            size: size,
            position: 4,
            categoryName: 'Pizza',
            categoryImage: 'assets/pizza.png',
          ),
          CategoryCard(
            size: size,
            position: 5,
            categoryName: 'Salad',
            categoryImage: 'assets/tomato-salad.png',
          ),
          CategoryCard(
            size: size,
            position: 6,
            categoryName: 'Soup',
            categoryImage: 'assets/Soup.png',
          ),
          CategoryCard(
            size: size,
            position: 7,
            categoryName: 'Toast',
            categoryImage: 'assets/toast-halved.png',
          ),
        ],
      ),
    );
  }
}
