import 'package:flutter/material.dart';
class Cart_Products extends StatefulWidget {
  @override
  _Cart_ProductsState createState() => _Cart_ProductsState();
}

class _Cart_ProductsState extends State<Cart_Products> {
  var Product_on_Cart = [
  {
  "name": "Blazer",
  "picture": "images/products/blazer1.jpeg",
  "price": 85,
  "Size": "M",
  "Color" : "Black",
  "Quantity": 1,
},
{
"name": "Red dress",
"picture": "images/products/dress1.jpeg",
"price": 50,
  "Size": "M",
  "Color" : "Red",
  "Quantity": 1,
},];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(itemBuilder: (context,index){
      return new Single_Cart_Product(
        cart_prod_name: Product_on_Cart[index]["name"],
        cart_prod_color: Product_on_Cart[index]["Color"],
        cart_prod_picture: Product_on_Cart[index]["picture"],
        cart_prod_price: Product_on_Cart[index]["price"],
        cart_prod_quantity: Product_on_Cart[index]["Quantity"],
        cart_prod_size: Product_on_Cart[index]["Size"],
      );
    },itemCount: Product_on_Cart.length,);
  }
}
class Single_Cart_Product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_quantity;
  Single_Cart_Product({
    this.cart_prod_name,
    this.cart_prod_price,
    this.cart_prod_color,
    this.cart_prod_picture,
    this.cart_prod_quantity,
    this.cart_prod_size,
});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: new ListTile(
        leading: new Image.asset(cart_prod_picture, width: 75,height: 80,),
        title: new Text(cart_prod_name),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Padding(padding: const EdgeInsets.all(0),child: new Text("Size:"),),
                new Padding(padding: const EdgeInsets.all(4),child: new Text(cart_prod_size, style: TextStyle(color: Colors.deepPurpleAccent),),),
                new Padding(padding: const EdgeInsets.fromLTRB(15,8,8,8),child: new Text("Color:"),),
                new Padding(padding: const EdgeInsets.all(4),child: new Text(cart_prod_color,style: TextStyle(color: Colors.deepPurpleAccent),),),
              ],
            ),
            new Container(
              alignment: Alignment.topLeft,
              child: new Text("\$${cart_prod_price}", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,color: Colors.deepPurpleAccent),),
            ),
          ],
        ),
        trailing: new Wrap(
          children: <Widget>[
            new IconButton(icon: Icon(Icons.arrow_drop_up),onPressed: (){},),
            new Text(cart_prod_quantity),
            new IconButton(icon: Icon(Icons.arrow_drop_down),onPressed: (){},)
          ],
        ),
      ),
    );
  }
}
