class ProductModel {
  int? id;
  String? productTag;
  String? name;
  String? description;
  int? categoryId;
  int? price;
  int? stock;
  String? imageUrl;
  bool? status;
  String? dateCreated;

  ProductModel(
      {this.id,
      this.productTag,
      this.name,
      this.description,
      this.categoryId,
      this.price,
      this.stock,
      this.imageUrl,
      this.status,
      this.dateCreated});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productTag = json['product_tag'];
    name = json['name'];
    description = json['description'];
    categoryId = json['category_id'];
    price = json['price'];
    stock = json['stock'];
    imageUrl = json['imageUrl'];
    status = json['status'];
    dateCreated = json['date_created'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['product_tag'] = this.productTag;
    data['name'] = this.name;
    data['description'] = this.description;
    data['category_id'] = this.categoryId;
    data['price'] = this.price;
    data['stock'] = this.stock;
    data['imageUrl'] = this.imageUrl;
    data['status'] = this.status;
    data['date_created'] = this.dateCreated;
    return data;
  }
}