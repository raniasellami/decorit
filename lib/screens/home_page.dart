import 'package:flutter/material.dart';

import 'constatnt.dart';
import 'main_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pim/screens/constatnt.dart';
import 'DetailsScreen.dart';

class HomePage extends StatefulWidget {
  HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

const kPrimaryColor = Colors.green;
const kAccentColor = Color(0xFFEFEFEF);
const kLightColor = Color(0xFFFCFCFC);

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  bool tags = false;
  List<String> categoryList = [
    "All",
    "modern",
    "vintage",
    "Traditional",
    "Rustic Farmhouse",
    "Casual",
  ];
  List popularList = [
    {
      "image": "assets/images/5d7a1da4b32620be847b854b9b66cd32-464x410.jpg",
      "name": "Luxury Swedian Chair",
      "price": "899"
    },
    {
      "image": "assets/images/80f01043217b5b1dd0d5eceb59c1e3b4.jpg",
      "name": "Luxury Swedian Chair",
      "price": "1299"
    },
    {
      "image": "assets/images/01112c0066c0302e2c41d7575af45d9c.jpg",
      "name": "Luxury Swedian Chair",
      "price": "688"
    },
    {
      "image": "assets/images/chambre-parentale-avec-mur-bleu_6015724.jpg",
      "name": "Luxury Swedian Chair",
      "price": "1488"
    },
  ];
  List bestList = [
    {
      "image": "assets/images/Cuisine.png",
      "name": "Luxury Swedian Chair",
      "price": "899"
    },
    {
      "image": "assets/images/d368f3222428502fee8b9ffa1e2f7a04.jpg",
      "name": "Luxury Swedian Chair",
      "price": "1299"
    },
    {
      "image": "assets/images/lit.jpg",
      "name": "Luxury Swedian Chair",
      "price": "688"
    },
    {
      "image": "assets/images/salon.png",
      "name": "Luxury Swedian Chair",
      "price": "1488"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAccentColor,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: 64.0,
            left: 24.0,
            right: 24.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => print("Side Menu"),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 14.0,
                        horizontal: 14.0,
                      ),
                      decoration: BoxDecoration(
                        color: kLightColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/menu.svg",
                        height: 18.0,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => print("Edit Profile"),
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/Profile.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "GET INSIRED BY \nOUR BEST ",
                        style: TextStyle(
                          fontSize: 42.0,
                          color: kPrimaryColor,
                        ),
                      ),
                      TextSpan(
                        text: " DESIGNS!",
                        style: TextStyle(
                          fontSize: 42.0,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 6.0,
                        horizontal: 8.0,
                      ),
                      decoration: BoxDecoration(
                        color: kLightColor,
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: TextField(
                        cursorColor: kPrimaryColor,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            size: 34.0,
                            color: kPrimaryColor,
                          ),
                          border: InputBorder.none,
                          hintText: "Search Furniture",
                          hintStyle: TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  GestureDetector(
                    onTap: () => print("Scan"),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 16.0,
                        horizontal: 16.0,
                      ),
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/scan.svg",
                        height: 30.0,
                        color: kLightColor,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      categoryList.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(right: 32.0),
                        child: GestureDetector(
                          onTap: () => setState(() {
                            currentIndex = index;
                          }),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                categoryList[index],
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: currentIndex == index
                                      ? kPrimaryColor
                                      : Colors.black.withOpacity(0.6),
                                ),
                              ),
                              Container(
                                height: currentIndex == index ? 4.0 : 0.0,
                                width: 16.0,
                                color: kPrimaryColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                "Popular",
                style: TextStyle(
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: 306.0,
                margin: EdgeInsets.only(
                  top: 24.0,
                  bottom: 16.0,
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: popularList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            index,
                            popularList[index]["image"],
                            popularList[index]["price"],
                            tags = true,
                          ),
                        ),
                      ),
                      child: Container(
                        height: 306.0,
                        width: 230.0,
                        margin: EdgeInsets.only(right: 16.0),
                        padding: EdgeInsets.symmetric(
                          vertical: 14.0,
                          horizontal: 14.0,
                        ),
                        decoration: BoxDecoration(
                          color: kLightColor,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Hero(
                                  tag: "popularImage$index",
                                  child: Container(
                                    height: 180.0,
                                    width: 230.0,
                                    margin: EdgeInsets.only(bottom: 4.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            popularList[index]["image"]),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 8.0,
                                  right: 8.0,
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 32.0,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              popularList[index]["name"],
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 6.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: List.generate(
                                      5,
                                      (index) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "\$${popularList[index]["price"]}",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Text(
                "Best",
                style: TextStyle(
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: 306.0,
                margin: EdgeInsets.only(
                  top: 24.0,
                  bottom: 16.0,
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: bestList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            index,
                            bestList[index]["image"],
                            popularList[index]["price"],
                            tags = false,
                          ),
                        ),
                      ),
                      child: Container(
                        height: 306.0,
                        width: 230.0,
                        margin: EdgeInsets.only(right: 16.0),
                        padding: EdgeInsets.symmetric(
                          vertical: 14.0,
                          horizontal: 14.0,
                        ),
                        decoration: BoxDecoration(
                          color: kLightColor,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Hero(
                                  tag: "bestImage$index",
                                  child: Container(
                                    height: 180.0,
                                    width: 230.0,
                                    margin: EdgeInsets.only(bottom: 4.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            bestList[index]["image"]),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 8.0,
                                  right: 8.0,
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 32.0,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              bestList[index]["name"],
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 6.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: List.generate(
                                      5,
                                      (index) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "\$${bestList[index]["price"]}",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
