import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mokshya_ecommerce_admin/components/drawer.dart';
import 'package:mokshya_ecommerce_admin/components/add_category.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final List<String> items = [
    'Images',
    'Category Name',
    'Sort Order',
    'Status',
    'Product Count',
    'Subcategory Count',
    'Action'
  ];

  var chart = <String, List>{
    'Images': ['images/mokshya.jpg'],
    'Category Name': ['Camera'],
    'Sort Order': ['0'],
    'Status': ['on'],
    'Product Count': ['0'],
    'Subcategory Count': ['0'],
    'Action': ['0']
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
      ),
      drawer: DrawerCode(),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.05,
                color: HexColor("#E5FAFB"),
                child: Text(
                  "Ecommerce Category",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddCategory()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.08,
                      height: MediaQuery.of(context).size.height * 0.04,
                      color: HexColor("#660099"),
                      child: Icon(
                        Icons.add,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.055,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.white.withOpacity(0.1),
                            filled: true,
                            prefixIcon: Icon(Icons.search),
                            hintText: 'Search something ...',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none),
                            contentPadding: EdgeInsets.zero)),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: HexColor("#CCCCCC"),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * 0.045,
                  child: DropdownButton(
                    hint: Text("Select Catogory"),
                    items: [],
                    icon: Icon(
                      Icons.arrow_drop_down_circle,
                      color: Colors.black87,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              color: HexColor("#CCCCCC"),
              thickness: 0.5,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.50,
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 2, bottom: 5, left: 5, right: 5),
                child: ListView.builder(
                  //physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return CategoryMapping(
                      heading: items[index],
                      // picture: chart["Images"][index],
                      // category_name: chart["Category Name"][index],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryMapping extends StatelessWidget {
  final heading;
  final picture;
  final category_name;

  CategoryMapping({this.heading, this.picture, this.category_name});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              heading,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: HexColor("#660099"),
              ),
            ),
          ),
        ),
        ColoredBox(
          color: HexColor("#E5FAFB"),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: HexColor("#CCCCCC"),
                ),
              ),
              height: 20.0,
              width: MediaQuery.of(context).size.width * 0.30,
            ),
          ),
        ),
        // Image(
        //   height: 50,
        //   width: 50,
        //   image: AssetImage(picture),
        // ),
        Text("kasjjasjd"),
        Text("")
      ],
    );
  }
}

class CategoryData extends StatelessWidget {
  final picture;
  var chart = <String, List>{
    'Images': ['images/mokshya.jpg'],
    'Category Name': ['Camera'],
    'Sort Order': ['0'],
    'Status': ['on'],
    'Product Count': ['0'],
    'Subcategory Count': ['0'],
    'Action': ['0']
  };

  CategoryData({this.picture});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 100,
      child: Image(image: AssetImage(chart["Images"][0])),
    );
  }
}
