class ProductModel {
 final int id;
 final String name;
 final String image;
 final String quantity;
 final double price; 

 ProductModel({
  required this.id,
  required this.name,
  required this.image,
  required this.price,
  required this.quantity,
 });
}
List<ProductModel> produts=[
 ProductModel(
  id: 2,
  name: 'Banana',
 image: 'assets/images/banan.png',
  price: 2.0, 
 quantity: '1 Kg'),
 ProductModel(
  id: 2,
  name: 'Apple',
 image: 'assets/images/Apple.png',
  price: 3.5, 
 quantity: '1 Kg'),
 ProductModel(
  id: 2,
  name: 'Banana',
 image: 'assets/images/banan.png',
  price: 2.0, 
 quantity: '1 Kg'),
ProductModel(
  id: 2,
  name: 'Apple',
 image: 'assets/images/Apple.png',
  price: 3.5, 
 quantity: '1 Kg'),

];