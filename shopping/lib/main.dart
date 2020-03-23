import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:shopping/componets/horizontal_listview.dart';
import 'package:shopping/componets/products.dart';
import 'package:shopping/pages/cart.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/w3.jpeg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/c1.jpg'),
          AssetImage('images/w4.jpeg'),
          AssetImage('images/m2.jpg'),
        ],
        autoplay: false,
        dotSize: 3.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        elevation:0.1,backgroundColor: Colors.deepPurpleAccent,
        title: Text('Clothes Market', style: TextStyle(fontStyle: FontStyle.italic),),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white70,) , onPressed:(){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white70,) , onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>new Cart()));}),
        ],
      ),
      drawer: new Drawer(
    child: new ListView(
    children: <Widget>[
//            header
    new UserAccountsDrawerHeader(
    accountName: Text('Abhilekh Soni'),
    accountEmail: Text('abhilekh.soni@gmail.com'),
    currentAccountPicture: GestureDetector(
    child: new CircleAvatar(
    backgroundColor: Colors.white10,
    child: Icon(Icons.person, color: Colors.white70,),
    ),
    ),
    decoration: new BoxDecoration(
    color: Colors.deepPurpleAccent
    ),
    ),

//            body

    InkWell(
    onTap: (){},
    child: ListTile(
    title: Text('Home Page'),
    leading: Icon(Icons.home),
    ),
    ),

    InkWell(
    onTap: (){},
    child: ListTile(
    title: Text('My account'),
    leading: Icon(Icons.person),
    ),
    ),

    InkWell(
    onTap: (){},
    child: ListTile(
    title: Text('My Orders'),
    leading: Icon(Icons.shopping_basket),
    ),
    ),

    InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>new Cart()));
    },
    child: ListTile(
    title: Text('Your Cart'),
    leading: Icon(Icons.shopping_cart),
    ),
    ),

    InkWell(
    onTap: (){},
    child: ListTile(
    title: Text('Favourites'),
    leading: Icon(Icons.favorite_border),
    ),
    ),

    Divider(),

    InkWell(
    onTap: (){},
    child: ListTile(
    title: Text('Settings'),
    leading: Icon(Icons.settings_applications,),
    ),
    ),

    InkWell(
    onTap: (){},
    child: ListTile(
    title: Text('About'),
    leading: Icon(Icons.help_outline,),
    ),
    ),
    ],
    ),
    ),

      body: new ListView(
        children: <Widget>[
          //image carousel begins here
          image_carousel,
          new Padding(padding: const EdgeInsets.all(8.0),
            child: new Text('Categories'),),

          //Horizontal list view begins here
          HorizontalList(),
          new Padding(padding: const EdgeInsets.all(20.0),
            child: new Text('Recent products'),),

          //grid view
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
