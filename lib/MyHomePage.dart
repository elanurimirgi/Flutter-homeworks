import 'package:flutter/material.dart';
import 'appBarPart.dart';
import 'searchPart.dart';
import 'healthPart.dart';
import 'companiesPart.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: appBar(),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HealthSection(),
            SizedBox(height: 16.0),
            CompanySearchBar(),
            SizedBox(height: 16.0),
            Text(
              'İstediğiniz firmada indirim yakalama fırsatı...',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: CompaniesList(),
            ),
          ],
        ),
      ),
    );
  }
}
