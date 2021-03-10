import 'package:flutter/material.dart';

class MyLogoLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 90,
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/escudo.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 38,
                  child: Text(
                    'anti',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ),
              ],
            ),
            Container(
              height: 38,
              child: Row(
                children: [
                  Text(
                    'hacker',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
