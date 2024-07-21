import 'package:flutter/material.dart';

import '../responsive.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment:CrossAxisAlignment.start ,
      children: [
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome User",
          style:TextStyle(fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white)
          ),
            SizedBox(
              height: 10,),

            Text("Get Ready To Learn!",
                style:TextStyle(fontSize: 30,
                    fontWeight: FontWeight.bold)
            ),
          ],
        ),

      ],
    );
  }
}
