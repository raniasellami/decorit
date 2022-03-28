import 'package:flutter/material.dart';
import 'package:pim/screens/constatnt.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: appPadding),
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.08,
          decoration: BoxDecoration(
            color: black.withOpacity(0.07),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide.none),
                contentPadding: EdgeInsets.symmetric(
                  vertical: appPadding * 0.75,
                  horizontal: appPadding,
                ),
                fillColor: white,
                hintText: 'Search',
                prefixIcon: Icon(
                  Icons.search,
                  size: 25,
                  color: black.withOpacity(0.4),
                )),
          ),
        ),
      ),
    );
  }
}
