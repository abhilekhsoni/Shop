import 'package:flutter/material.dart';
import 'package:shopping/pages/homepage.dart';


class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;
  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,
});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation:0.1,backgroundColor: Colors.deepPurpleAccent,
        title: InkWell(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>new HomePage()));},
          child:Text('Clothes Market', style: TextStyle(fontStyle: FontStyle.italic),),),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white70,) , onPressed:(){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white70,) , onPressed:(){}),
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: new GridTile(
                child: new Container(
                  color: Colors.transparent,
                  child: Image.asset(
                      widget.product_detail_picture),
                ),
              footer: new Container(
                color: Colors.transparent,
                child: new ListTile(
                  leading: new Text(widget.product_detail_name,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("\$${widget.product_detail_old_price}",
                          style: TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),
                        ),

                      ),
                      Expanded(
                          child: new Text("\$${widget.product_detail_new_price}",
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                          )
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          new Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                  builder: (context){
                    return AlertDialog(
                      title: new Text("Size"),
                      content: new Text("Choose the size"),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                        child: new Text("close"),
                        )
                      ],
                    );
                  }
                  );
                }, 
                color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.1,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Size")),
                      Expanded(child: new Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                      builder: (context){
                        return AlertDialog(
                          title: new Text("Color"),
                          content: new Text("Choose the Color"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                              child: new Text("close"),
                            )
                          ],
                        );
                      }
                  );
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.1,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Color")),
                      Expanded(child: new Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                      builder: (context){
                        return AlertDialog(
                          title: new Text("Quantity"),
                          content: new Text("No. of Items"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                              child: new Text("close"),
                            )
                          ],
                        );
                      }
                  );
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.1,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Qty")),
                      Expanded(child: new Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(child: MaterialButton(onPressed: (){},
              color: Colors.red,
                textColor: Colors.white,
                elevation: 0.1,
                child: new Text("Buy Now"),
              ),
              ),
              new IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: (){}),
              new IconButton(icon: Icon(Icons.favorite),color: Colors.red, onPressed: (){}),
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("Product Details"),
            subtitle: new Text("Color: Black\n\nFabric: Blended Cotton\n\nType: Single Breasted"),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
              child: new Text("Product Name", style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5),
                child: new Text(widget.product_detail_name),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: new Text("Product Brand", style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5),
                child: new Text("Louis Phillipe"),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: new Text("Product Condition", style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5),
                child: new Text("New"),
              ),
            ],
          ),
          Divider(),
          Padding(padding: const EdgeInsets.all(8),
            child:new Text("Similar Products", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          ),
          Container(
            height: 360,
            child: Similar_Products(),
          ),
        ],
      ),
    );
  }
}
class Similar_Products extends StatefulWidget {
  @override
  _Similar_ProductsState createState() => _Similar_ProductsState();
}

class _Similar_ProductsState extends State<Similar_Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Stripped Blazer",
      "picture": "images/blazer2.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red Sweatshirt",
      "picture": "images/sweatshirt2.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Blue Sweatshirt",
      "picture": "images/sweatshirt1.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Midi",
      "picture": "images/midi.jpg",
      "old_price": 100,
      "price": 50,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}
class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new ProductDetails(
                    product_detail_name: prod_name,
                    product_detail_new_price: prod_price,
                    product_detail_old_price: prod_old_price,
                    product_detail_picture: prod_picture,
                  ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: new Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        ),
                        new Text("\$${prod_price}",style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}

