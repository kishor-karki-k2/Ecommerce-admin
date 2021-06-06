import 'package:flutter/material.dart';
import 'package:mokshya_ecommerce_admin/components/drawer.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mokshya_ecommerce_admin/components/add_Product.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    List<String> items = [
      'ID',
      'Images',
      'Product Name',
      'Model',
      'Price',
      'Quantity',
      'Status',
      'Action'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
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
                  "Ecommerce Product",
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
                        MaterialPageRoute(builder: (context) => AddProducts()));
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
                    hint: Text("Select Product"),
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
                  padding: const EdgeInsets.only(
                      top: 2, bottom: 5, left: 5, right: 5),
                  child: ListView.builder(
                    //physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return ProductMapping(
                        heading: items[index],
                      );
                    },
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class ProductMapping extends StatelessWidget {
  final heading;
  final picture;
  final category_name;

  ProductMapping({this.heading, this.picture, this.category_name});
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
      ],
    );
  }
}
