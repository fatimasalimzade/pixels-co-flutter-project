class ProductModel {
  final double rating;
  final String image;
  final String title;
  final int price;

  ProductModel(
      {required this.rating,
      required this.image,
      required this.title,
      required this.price});
}

final List<ProductModel> products = [
      ProductModel(
          rating: 4.5,
          image: "assets/img/camera1.png",
          title: "Canon EOS 30D",
          price: 1600),
      ProductModel(
          rating: 4.5,
          image: "assets/img/camera2.png",
          title: "SONY 200mm Zoom",
          price: 6000),
      ProductModel(
          rating: 4.5,
          image: "assets/img/camera3.png",
          title: "Canon EOS 30D",
          price: 1600),
      ProductModel(
          rating: 4.5,
          image: "assets/img/camera4.png",
          title: "SONY 200mm Zoom",
          price: 6000),
    ];