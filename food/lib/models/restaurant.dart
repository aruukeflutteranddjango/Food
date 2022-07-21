import 'food.dart';

class Restaurant {
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String, List<Food>> menu;
  Restaurant(
    this.name,
    this.waitTime,
    this.distance,
    this.label,
    this.logoUrl,
    this.desc,
    this.score,
    this.menu,
  );
  static Restaurant generateRestaurant() {
    return Restaurant('Арууке', '20-30 мин', '2.4км', 'Ресторан',
        'assets/images/logo.png', 'Элитный ресторан', 4.7, {
      'Рекомендации': Food.generateRecommendFoods(),
      'Популярные': Food.generatePopularFoods(),
      'Суши': [],
      'Бургер': [],
      'Пицца': [],
      'Вегетарианское': [],
    });
  }
}
