import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'event_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/cat.jpg"),
            Text(
              "Hello World",
              style: GoogleFonts.lobster(
                  fontSize: 42
              ),
            ),
            const Text("Voici ma 1ere application avec Flutter",
              style: TextStyle(
                  fontSize: 25
              ),
              textAlign: TextAlign.center,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
            ),
          ],
        )
    );
  }
}