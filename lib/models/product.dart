class Product{
  String? imageProduct;
  String? textProduct;
  String? subTitleProduct;
  Product({this.imageProduct,this.textProduct,this.subTitleProduct});


  Product.fromJson(Map<String, dynamic> json){
    imageProduct = json['imageProduct'];
    textProduct = json['textProduct'];
    subTitleProduct = json['subTitleProduct'];
  }


  Map<String, dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();

    data['imageProduct'] = this.imageProduct;
    data['textProduct'] = this.textProduct;
    data['subTitleProduct'] = this.subTitleProduct;
    return data;
  }

}

