import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pim/screens/search_bar.dart';
import 'package:pim/screens/single_item_bathroom.dart';
import 'package:pim/screens/single_item_kitchen.dart';
import 'package:pim/screens/single_item_room.dart';
import 'package:pim/screens/single_item_screen.dart';
import 'home_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Vistez UKREA "),
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Colors.green),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SearchBar(),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.80,
                  //height: 700,
                  child: ListView(
                    children: [
                      HomeItem(
                        title: "Chambre à coucher",
                        imageb:
                            "assets/images/chambre-parentale-avec-mur-bleu_6015724.jpg",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SingleItemRoom(
                                    title: "Chambre à coucher")),
                          );
                        },
                      ),
                      HomeItem(
                        title: "Salon",
                        imageb: "assets/images/salon.png",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SingleItemScreen(title: "Salon")),
                          );
                        },
                      ),
                      HomeItem(
                        title: "Cuisine",
                        imageb: "assets/images/Cuisine.png",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SingleItemKitchen(title: "Cuisine")),
                          );
                        },
                      ),
                      HomeItem(
                        title: "Salle de bain",
                        imageb:
                            "assets/images/3D-Salle-de-bain-moderne-chic-Ouv-e1549444224698.jpg",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SingleItemBathroom(
                                    title: "Salle De Bain")),
                          );
                        },
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
