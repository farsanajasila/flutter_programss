import 'package:flutter/material.dart';
void main() {
  runApp( MaterialApp(
    home: GridView3(),
  ));
}

class GridView3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List.generate(15, (index) => Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
          color: Colors.primaries[index % Colors.primaries.length],),
          child: Column(
            children: [
              Image.asset("assets/images/fd2.jpg"),
              const Text(
                "Food 1",
                style: TextStyle(fontSize: 20),
              ),
          const Text(
            "120 \$",
          style: TextStyle(fontSize: 10),
          )
            ],
          ),
        )),
      ),

    );
  }
}
