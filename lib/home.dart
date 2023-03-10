import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return SliverAppBar( //daha güzel bir AppBar için SliverAppBar :)
    expandedHeight: MediaQuery.of(context).size.height*0.4, 
    //expandedHeight : AppBarın kaplayacağı yükseklik için kullandığımız bir parametre

    pinned: false,
    //pinned : Pinned parametresi ekran yukarı kaydırıldığında AppBarın görünürlüğünün kontrolünü sağlar.
    //Ben bu ekranda false olarak kullandım.

    // flexibleSpace: ,
    );
  }
}
