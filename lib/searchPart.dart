import 'package:flutter/material.dart';

class CompanySearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(Icons.search, color: Colors.black),
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Firma Ara',
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
