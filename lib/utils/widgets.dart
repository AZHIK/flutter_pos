import 'package:flutter/material.dart';
import 'package:pharmpos/colors.dart';
import 'package:pharmpos/responsive.dart';

class CategoryBox extends StatefulWidget {
  const CategoryBox({super.key});

  @override
  State<CategoryBox> createState() => _CategoryBoxState();
}

class _CategoryBoxState extends State<CategoryBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: !ResponsiveLayout.isMobile(context) ? 80 : 50,
      width: 120,
      margin: !ResponsiveLayout.isMobile(context)
          ? EdgeInsets.fromLTRB(20, 10, 20, 1)
          : EdgeInsets.fromLTRB(5, 10, 0, 10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        border: Border.all(
            color: const Color.fromARGB(255, 188, 225, 255),
            style: BorderStyle.solid,
            width: 1),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8), // Adjust top padding as needed
            child: Icon(
              Icons.vaccines,
              size: 35,
              color: Colors.black26,
            ),
          ),
          Text(
            "Pain Killer",
            style:
                TextStyle(fontWeight: FontWeight.w600, color: Colors.black38),
          )
        ],
      ),
    );
  }
}

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 10, 5, 5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
            color: const Color.fromARGB(255, 188, 225, 255),
            style: BorderStyle.solid,
            width: 1),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            height: 100,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: MyAppColor.primaryBg,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top:10),
                    child:Text("Cart: 001",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
                  ),
                  SizedBox( height: 31,),
                  SizedBox(
                    height: 30,
                    child: Row(
                    children: [
                      Expanded(child: Container(
                        height: double.infinity,
                        color: Color.fromARGB(255, 161, 238, 248),
                        child: Center(
                          child: Text("Cart Items: 10",style: TextStyle(fontWeight: FontWeight.w600),),
                        ),
                      )),
                      Expanded(child: Container(
                        height: double.infinity,
                        color: Color.fromARGB(255, 223, 251, 255),
                        child: Center(
                          child: Text("History",style: TextStyle(fontWeight: FontWeight.w600)),
                        ),
                      ))
                    ],
                  ),
                  ),  
                ],
              ),
            ),
          ),
        Expanded(
          flex: 3,
          child: Container()
        ),
        Expanded(
          flex: 2,
          child:Container(
            decoration: BoxDecoration(
              color: MyAppColor.primaryBg,
              borderRadius: BorderRadius.only(bottomLeft:Radius.circular(10),bottomRight: Radius.circular(10))
            ),
          )
        )
        ],
      ),
    );
  }
}




var productBox  = Container(
      height:170,
      width: 140,
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        border: Border.all(
            color: const Color.fromARGB(255, 188, 225, 255),
            style: BorderStyle.solid,
            width: 1),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(10.0),
    topRight: Radius.circular(16.0),
  ),
  child: Image.asset(
    "assets/images/medication.jpg",
    fit: BoxFit.cover, // Optional: Makes it fill its container nicely
  ),
),
          SizedBox(height: 10,),
          Text("Paracetamol", style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black45

          ),
          ),
          SizedBox(height: 20,),
          Text("Price: 1000", style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black54

          ),)
        ],
      ),
    );