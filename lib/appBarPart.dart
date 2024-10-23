import 'package:flutter/material.dart';

class appBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(80.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.indigo[600],
      title: Align(
        alignment: Alignment(-0.2, 0.6),
        child: Text(
          'Firmalar',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () {},
      ),
    );
  }
}
