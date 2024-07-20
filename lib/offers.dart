import 'dart:async';

import 'package:flutter/material.dart';

class Offers extends StatefulWidget {
  const Offers({super.key});

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {

  int selectedOffer =0;
  List<Image> widgetList=[
    Image.asset("assets/images/offer1.jpg", fit: BoxFit.cover),
    Image.asset("assets/images/offer2.jpg", fit: BoxFit.cover),
    Image.asset("assets/images/offer3.jpg", fit: BoxFit.cover),
  ];

  late Timer timer;
  final PageController controller=PageController();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    timer=Timer.periodic(Duration(seconds: 2), (timer) {
      if(selectedOffer<2){
        selectedOffer++;
      }else{selectedOffer=0;}

      if(controller.positions.isNotEmpty){
        controller.animateToPage(selectedOffer,
            duration: Duration(milliseconds: 400),
            curve: Curves.easeIn);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [PageView.builder(
            controller: controller,
            itemCount: widgetList.length,
            itemBuilder: (context,index){
          return widgetList[index];
        },
        onPageChanged: (int selectedPage){
              setState(() {
                selectedOffer=selectedPage;
              });
        },
        ),

      Container(
        margin: EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for(int index=0;index<widgetList.length;index++)
              if(index==selectedOffer) ...[createCircle(true)]
            else createCircle(false)
          ],
        ),
      )]
      ),

    );
  }

  Widget createCircle(bool isCurrent){
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
    margin: EdgeInsets.symmetric(horizontal: 10),
    height: isCurrent?12: 8,
    width: isCurrent?12: 8,
    decoration:  BoxDecoration(
      color: isCurrent ? Colors.black:Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(12))
    ),
    );
  }
}
