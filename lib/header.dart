import 'package:flutter/material.dart';

import 'responsive.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment:CrossAxisAlignment.start ,
      children: [
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Welcome User",
          style:TextStyle(fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white)
          ),
            SizedBox(
              height: 10,),

            const Text("Get Ready To Learn!",
                style:TextStyle(fontSize: 30,
                    fontWeight: FontWeight.bold)
            ),
          ],
        ),
         Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child:Align(
                alignment: Alignment.center,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [const Icon(Icons.notifications,
                    color: Colors.white,),
                    Container(
                      height: 10,
                      width: 5,
                      decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius:
                          BorderRadius.all(Radius.circular(10))
                      ),
                    )
                  ]
                ),
              ),
            ),
            const SizedBox(width: 5,),
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: const Icon(Icons.person,color: Colors.white,),
            )
          ],
        )
      ],
    );
  }
}
