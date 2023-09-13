import 'package:flutter/material.dart';
void main(){  //to run an app
  runApp(MaterialApp(  //default theme of our flutter app
    home:SplashPage(),  //initial page to be launched while running an app
  ));
}
class SplashPage extends StatelessWidget {
  @override
  //to create our widget tree we use build function
  Widget build(BuildContext context) {
    //BuildContext-used to locate widgets on the widget tree and monitor their actions
    return  Scaffold(
    backgroundColor: Colors.black,
      body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///adding built in icons
            // Icon(
            //   Icons.favorite,
            //   size: 80,
            //   color: Colors.red,
            // ),
            ///adding external icons (flutter accessed it as image)
            ///assert image as
            //  Image(
            // image: AssetImage("assets/icons/tree.png"),
            //  width: 100 ,
            //  height: 100,
            // ),
            Image(
                 image: NetworkImage("https://icons.iconarchive.com/icons/elegantthemes/softies/128/Compose-icon.png"),
                 width: 100,height: 100,
             ),
            Text(
              "My Application",
              style: TextStyle(
                fontSize: 20,
                color: Colors.green,
            fontWeight: FontWeight.bold),
            )
          ],
          ),
    ),
    );
  }
  }
