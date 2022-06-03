
class CartModel {
  String? cartId;
  String? imageUrl;
  String? name;
  String? info;
  int? quantity;

  CartModel({this.cartId,this.imageUrl,this.name,this.info, this.quantity});

  toJson() {
    return {
      'CartId': cartId,
      'imgUrl': imageUrl,
      'shortInfo': info,
      'title': name,
      'quantity': quantity,
    };
  }
  CartModel.fromJson(json, id) {
    cartId = id;
    imageUrl = json['imgUrl'] ??
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1UZyPMY3-hJzKToOonNqvBHFgSwXrMysQkQ&usqp=CAU";
    info = json['info'] ?? "Short info about the cart item";
    name = json['name'] ?? "Plant";
    //price = json['price'] ?? 0.00;
    quantity = json['quantity'] ?? 1;
  }
}