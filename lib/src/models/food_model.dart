//esatblish food class with all of the needed attributes

class Food{
  final String id;
  final String name;
  final String imgPath;
  final String category;
  final String description;
  final double price;
  final double discount;
  final double ratings;

  Food({this.id, this.name, this.imgPath, this.category, this.description, this.price, this.discount, this.ratings});
}