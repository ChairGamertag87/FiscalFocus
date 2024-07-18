import 'package:fiscalfocus/Pages/account_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key,});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/money_jar.png",
              height: 225,
              width: 300,

            ),
            const Text("Welcome !",
              style: TextStyle(
                fontSize: 42,
                fontFamily: 'Poppins',
              ),
            ),
            const Text("Check yours accounts!",
              style: TextStyle(
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),

          ],
        )
    );
  }
}