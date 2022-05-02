import 'dart:math';

import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.tune),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          )
        ],
      ),
      body: BodyPage(),
    );
  }
}

class BodyPage extends StatelessWidget {
  @override
  Widget build(
    BuildContext context,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
      Container(width: double.infinity, height: 100),
      Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.indigo[900],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        height: 500,
        width: double.infinity,
        child: BodyContent(),
      ),
    ]);
  }

  Widget BodyContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start, 
      children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, 
        children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Charlie Lamp",style: TextStyle(fontSize: 20, color: Colors.white)),
          Text("\$50.00",
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
        ]),
        Container(
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            child: IconButton(
              iconSize: 30,
              onPressed: null,
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            )),
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        CardOptions(Icons.power, "35", "Kwh"),
        CardOptions(Icons.lightbulb_outline, "11", "Watt"),
        CardOptions(Icons.fullscreen, "9", "Sizes"),
        CardOptions(Icons.list, "15", "Colors"),
      ]),
      Text(
        "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.",
        textAlign: TextAlign.justify,
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
      Text(
        "Other Documents",
        textAlign: TextAlign.start,
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Container(
          child: Row(
            children: [
              imageView("https://th.bing.com/th/id/R.f27a671a602c0aadc3173b8c25d68709?rik=sPDrRz9CPlq8fg&riu=http%3a%2f%2fgumps.scene7.com%2fis%2fimage%2fGumps%2f156530_is%3f%24PAP%24&ehk=Dv%2bgT6EU%2fpaLvvoCSbXd3AeEs4kBFaC0AnPR97mqJQ8%3d&risl=&pid=ImgRaw&r=0"),
              imageView("https://th.bing.com/th/id/OIP.WTNL4uykEIS9RfQPnDMEaAHaLH?pid=ImgDet&rs=1"),
              imageView("https://adobeinteriors.com/image/cache/catalog/lighting/lamps/durango-table-lamp-9-910x1155-product_popup.jpg"),
            ]
          )
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: IconButton(
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.white
            ),
            onPressed: null,
          ),
        )
      ],)
    ]);
  }

  Widget CardOptions(IconData icon, String number, String unity) {
    return Container(
        width: 80,
        decoration: BoxDecoration(
          color: Colors.indigo[600],
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        padding: const EdgeInsets.all(5.0),
        margin: const EdgeInsets.only(top: 15.0, bottom: 15.0),
        child: Column(children: [
          Icon(icon, size: 30, color: Colors.orange),
          Text(number,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
          Text(unity, style: TextStyle(fontSize: 20, color: Colors.white)),
        ]));
  }

  Widget imageView(String url) {
    return ClipOval(
      child: Image.network(
        url,
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ),
    );
  }
}
