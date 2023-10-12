import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: ListView_Builder(),));
}
class ListView_Builder extends StatelessWidget {
var images=[
  "assets/images/fd1.jpg",
  "assets/images/fd2.jpg",
  "assets/images/fd3.jpg",
  "assets/images/fd4.jpg",
  "assets/images/fd5.jpg",
  "assets/images/orange.png.url",
  "assets/images/pineapple.png.url",
  "assets/images/pizza.png.url",
  "assets/images/ramen.png.url",
  "assets/images/salad.png.url"
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("ListView Builder"),
      ),
      body: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
          itemBuilder: (context,intex){
    return Card(
    child: ListTile(
      title: Text("Hello"),
      subtitle:Row(
         children:[
          Icon(Icons.call_missed_rounded,color: Colors.red,),
           Text("25 Sep 2023,"),
      Text("10,07")
        ],
      ),
      leading: Icon(Icons.ac_unit_outlined),
      trailing: Icon(Icons.shopping_cart),
    ),
    );
    }),
    );
  }
}
