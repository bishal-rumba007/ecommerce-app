
class FakeCategory{
  final String name;
  final String image;
  final int id;

  FakeCategory({
    required this.name,
    required this.image,
    required this.id,
  });

}

List<FakeCategory> categories = [
  FakeCategory(
    id: 1,
    name: "Electric Motors",
    image: "assets/dummy/products/product1.jpeg",
  ),
  FakeCategory(
    id: 2,
    name: "Mechanical GearBox",
    image: "assets/dummy/products/product2.jpeg",
  ),
  FakeCategory(
    id: 3,
    name: "Gear Pump",
    image: "assets/dummy/products/product3.jpeg",
  ),
  FakeCategory(
    id: 4,
    name: "Gear Channel",
    image: "assets/dummy/products/product5.jpeg",
  ),
  FakeCategory(
    id: 5,
    name: "Vaccum Pump",
    image: "assets/dummy/products/product4.jpeg",
  ),

];