import 'package:flutter/material.dart';

class HealthSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.indigo[600],
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Align(
          alignment: Alignment(-0.2, 0.6),
          child: Text(
            'Sağlık',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        leading: Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Icon(Icons.healing, color: Colors.red),
        ),
      ),
    );
  }
}
