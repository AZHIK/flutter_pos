import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pharmpos/colors.dart';
import 'package:pharmpos/responsive/appbar.dart';
import 'package:pharmpos/responsive/sidebar.dart';
import 'package:pharmpos/responsive.dart';
import 'package:pharmpos/utils/widgets.dart';

class PosScreen extends StatefulWidget {
  const PosScreen({super.key});

  @override
  State<PosScreen> createState() => _PosScreenState();
}

class _PosScreenState extends State<PosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: MyAppbar(),
      body: Container(
        color: const Color.fromARGB(255, 233, 252, 255),
        child: !ResponsiveLayout.isMobile(context)
            ? Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 100,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 20), // Adjust top padding as needed
                                  child: Icon(
                                    Icons.local_hospital,
                                    size: 60,
                                  ),
                                ),
                                Text(
                                  "PharmPOS",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height:
                                !ResponsiveLayout.isMobile(context) ? 80 : 50,
                            width: 120,
                            margin: !ResponsiveLayout.isMobile(context)
                                ? EdgeInsets.fromLTRB(20, 10, 20, 1)
                                : EdgeInsets.fromLTRB(5, 10, 0, 10),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 0, 156, 177),
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 188, 225, 255),
                                  style: BorderStyle.solid,
                                  width: 1),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 8), // Adjust top padding as needed
                                  child: Icon(
                                    Icons.vaccines,
                                    size: 35,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Pain Killer",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          CategoryBox(),
                          CategoryBox(),
                          CategoryBox(),
                          CategoryBox(),
                          CategoryBox(),
                          CategoryBox(),
                          CategoryBox(),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 150,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 188, 225, 255),
                                    style: BorderStyle.solid,
                                    width: 1),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: MyAppColor.primaryBg,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10))),
                                    ),
                                  ),
                                  SizedBox(
                                      height: 43,
                                      child: Container(
                                        margin: EdgeInsets.only(top: 4),
                                        child: Center(
                                          child: Text(
                                            "Search to add to Cart",
                                            style: TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black45),
                                          ),
                                        ),
                                      )),
                                  SizedBox(
                                    height: 80,
                                    child: Row(
                                      children: [
                                        Expanded(
                                            flex: 2,
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  5, 0, 5, 0),
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  labelText: 'Search Product',
                                                  prefixIcon: Icon(Icons
                                                      .search), // Change this icon as needed
                                                  filled: true,
                                                  fillColor: const Color
                                                      .fromARGB(255, 235, 250,
                                                      250), // Light background color
                                                  contentPadding:
                                                      EdgeInsets.all(10),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    borderSide: BorderSide
                                                        .none, // No border for the default state
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    borderSide: BorderSide(
                                                        color: const Color
                                                            .fromARGB(255, 180,
                                                            251, 253)),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    borderSide: BorderSide(
                                                        color: const Color
                                                            .fromARGB(
                                                            255, 5, 179, 202),
                                                        width: 2.0),
                                                  ),
                                                ),
                                              ),
                                            )),
                                        Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  5, 0, 5, 0),
                                              child: TextFormField(
                                                keyboardType: TextInputType
                                                    .numberWithOptions(
                                                        decimal: true),
                                                inputFormatters: [
                                                  FilteringTextInputFormatter
                                                      .allow(RegExp(
                                                          r'^\d*\.?\d*')),
                                                ],
                                                decoration: InputDecoration(
                                                  labelText: 'Quantity',
                                                  hintText:
                                                      'e.g. 123 or 123.45',
                                                  prefixIcon: Icon(Icons.add),
                                                  filled: true,
                                                  fillColor:
                                                      const Color.fromARGB(
                                                          255, 235, 250, 250),
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 18.0,
                                                          horizontal: 16.0),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                    borderSide: BorderSide.none,
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    borderSide: BorderSide(
                                                        color: const Color
                                                            .fromARGB(255, 180,
                                                            251, 253)),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    borderSide: BorderSide(
                                                        color: const Color
                                                            .fromARGB(
                                                            255, 5, 179, 202),
                                                        width: 2.0),
                                                  ),
                                                ),
                                              ),
                                            )),
                                        Expanded(
                                            flex: 2,
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  5, 0, 5, 0),
                                              child: DropdownButtonFormField<
                                                  String>(
                                                value:
                                                    null, // or set a default value like 'Option 1'
                                                items: <String>[
                                                  'Wholesale',
                                                  'Retail',
                                                ]
                                                    .map((option) =>
                                                        DropdownMenuItem(
                                                          value: option,
                                                          child: Text(option),
                                                        ))
                                                    .toList(),
                                                onChanged: (value) {
                                                  // Handle the selected value here
                                                  print('Selected: $value');
                                                },
                                                decoration: InputDecoration(
                                                  hintText: 'Order type...',
                                                  prefixIcon:
                                                      Icon(Icons.list_alt),
                                                  filled: true,
                                                  fillColor:
                                                      const Color.fromARGB(
                                                          255, 235, 250, 250),
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 18.0,
                                                          horizontal: 16.0),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                    borderSide: BorderSide.none,
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    borderSide: BorderSide(
                                                        color: const Color
                                                            .fromARGB(255, 180,
                                                            251, 253)),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    borderSide: BorderSide(
                                                        color: const Color
                                                            .fromARGB(
                                                            255, 5, 179, 202),
                                                        width: 2.0),
                                                  ),
                                                ),
                                              ),
                                            )),
                                        Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  5, 0, 5, 0),
                                              child: ElevatedButton.icon(
                                                onPressed: () {
                                                  // Your submit logic here
                                                  print("Form submitted!");
                                                },
                                                icon: Icon(
                                                  Icons.shopping_cart,
                                                  color: Colors
                                                      .white, // Make icon white
                                                  size:
                                                      22, // Increase icon size (default is 24)
                                                ),
                                                label: Text(
                                                  'Add',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                style: ElevatedButton.styleFrom(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 16.0,
                                                      horizontal: 16.0),
                                                  minimumSize:
                                                      Size.fromHeight(56),
                                                  backgroundColor: MyAppColor
                                                      .primaryBg, // Button color
                                                  foregroundColor: Colors
                                                      .white, // Text color
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  elevation: 4,
                                                  textStyle: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                                margin: EdgeInsets.fromLTRB(5, 10, 5, 5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 188, 225, 255),
                                      style: BorderStyle.solid,
                                      width: 1),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Container(
                                  child: GridView.builder(
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 5,
                                      childAspectRatio: 0.82,
                                    ),
                                    itemCount: 20,
                                    
                                    itemBuilder: (context,index) {
                                      return productBox;
                                    },
                                  ),
                                )),
                          )
                        ],
                      )),
                  ResponsiveLayout.isDesktop(context)
                      ? Expanded(flex: 2, child: Cart())
                      : Container()
                ],
              )
            : Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CategoryBox(),
                        CategoryBox(),
                        CategoryBox(),
                        CategoryBox(),
                        CategoryBox(),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
