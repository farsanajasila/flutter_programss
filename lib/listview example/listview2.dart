import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: ListView2(),));
}
class ListView2 extends StatelessWidget {
  var title=["Data1","Data2","Data3","Data4","Data5","Data6","Data7","Data8","Data9","Data10"];
  var subti=[20,30,40,50,100,140,150,310,200,190];
  var images=[
    "assets/images/bananas.png.url",
    "assets/images/bibimbap.png.url",
    "assets/images/donut.png.url",
    "assets/images/grapes.png.url",
    "assets/images/hamburger.png.url",
    "assets/images/orange.png.url",
    "assets/images/pineapple.png.url",
    "assets/images/pizza.png.url",
    "assets/images/ramen.png.url",
    "assets/images/salad.png.url"
  ];
   ListView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text("ListView 2"),
      ),
      body: ListView(
        children: List.generate(20, (index) =>
            Card(
          child: ListTile(
            title: Text(title[index]),
            subtitle: Text("${subti[index]}"),
            leading: Image.asset(images[index]),
            //trialing: Icons(Icons.shopping_cart),
            trailing:Icon(Icons.shopping_cart),
          ),
        )),
      ),
    );
    
  }
}
