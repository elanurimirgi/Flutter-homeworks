import 'package:flutter/material.dart';

class CompaniesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        String title = index % 2 == 0
            ? 'Firma Adı Uzun Firma Adı'
            : 'Firma Adı';
        return createEqualHeightListTile(title, '10%');
      },
    );
  }

  Widget createEqualHeightListTile(String title, String discount) {
    return Container(
      height: 95,
      margin: EdgeInsets.symmetric(vertical: 5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 70,
            child: Row(
              children: [
                Icon(Icons.play_arrow, color: Colors.black),
                SizedBox(width: 8.0),
                Text(title, style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
          Expanded(
            flex: 30,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.indigo[600],
                borderRadius:
                BorderRadius.horizontal(right: Radius.circular(10)),
              ),
              child: Text(
                discount,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
