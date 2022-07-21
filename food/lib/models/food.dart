class Food {
  String imageUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool hightlight;

  Food(this.imageUrl, this.desc, this.name, this.waitTime, this.score, this.cal,
      this.price, this.quantity, this.ingredients, this.about,
      {this.hightlight = false});
  static List<Food> generateRecommendFoods() {
    return [
      Food(
          'assets/images/food.png',
          'В продаже ',
          'Суп',
          '50 мин',
          4.8,
          '350 ккал',
          300,
          1,
          [
            {'Лапша': 'assets/images/noodles.png'},
            {'Креветки': 'assets/images/schrimps.png'},
            {'Яйцо': 'assets/images/egg.png'},
            {'Лук': 'assets/images/scallions.png'},
          ],
          ('Рамен это японское блюдо с лапшой')),
      Food(
          'assets/images/food2.png',
          'В продаже ',
          'Курица',
          '50 мин',
          4.8,
          '350 ккал',
          200,
          1,
          [
            {'Лапша': 'assets/images/noodles.png'},
            {'Креветки': 'assets/images/schrimps.png'},
            {'Яйцо': 'assets/images/egg.png'},
            {'Лук': 'assets/images/scallions.png'},
          ],
          ('Рамен это японское блюдо с лапшой'))
    ];
  }

  static List<Food> generatePopularFoods() {
    return [
      Food(
          'assets/images/food2.png',
          'Самые популярные',
          'Курица',
          '50 мин',
          4.8,
          '350 ккал',
          12,
          1,
          [
            {'Лапша': 'assets/images/noodles.png'},
            {'Креветки': 'assets/images/schrimps.png'},
            {'Яйцо': 'assets/images/egg.png'},
            {'Лук': 'assets/images/scallions.png'},
          ],
          'Рамен это японское блюдо с лапшой'),
      Food(
          'assets/images/food3.png',
          'Самые популярные',
          'Салат',
          '50 мин',
          4.8,
          '350 ккал',
          12,
          1,
          [
            {'Лапша': 'assets/images/noodles.png'},
            {'Креветки': 'assets/images/schrimps.png'},
            {'Яйцо': 'assets/images/egg.png'},
            {'Лук': 'assets/images/scallions.png'},
          ],
          'Рамен это японское блюдо с лапшой')
    ];
  }
}
