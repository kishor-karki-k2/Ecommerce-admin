import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mokshya_ecommerce_admin/pages/manufacturer.dart';
import 'package:mokshya_ecommerce_admin/pages/product_page.dart';
import 'package:mokshya_ecommerce_admin/pages/category_page.dart';
import 'package:mokshya_ecommerce_admin/pages/sales_chart.dart';
import 'package:mokshya_ecommerce_admin/pages/dashboard.dart';

class DrawerCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: HexColor("#660099"),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("images/store_logo.png"),
                  ),
                ),
                Center(
                  child: Text(
                    "TECH AND IT SOLUTIONS",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 20),
                  child: FlatButton(
                    height: 40.0,
                    color: Colors.green,
                    textColor: Colors.white,
                    minWidth: 170,
                    child: Text(
                      "UPGRADE",
                      style: TextStyle(fontSize: 15),
                    ),
                    onPressed: () {},
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashboardPage()));
                  },
                  child: ListTile(
                    title: Text(
                      'Home Page',
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: Icon(Icons.home, color: Colors.white),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CategoryPage()));
                  },
                  child: ListTile(
                    title: Text(
                      'Categories',
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: Icon(Icons.category, color: Colors.white),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProductPage()));
                  },
                  child: ListTile(
                      title: Text(
                        'Product',
                        style: TextStyle(color: Colors.white),
                      ),
                      leading:
                          Icon(Icons.wallet_giftcard, color: Colors.white)),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SalesChart()));
                  },
                  child: ListTile(
                    title: Text(
                      'Sales Report',
                      style: TextStyle(color: Colors.white),
                    ),
                    leading:
                        Icon(Icons.point_of_sale_sharp, color: Colors.white),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ManufacturePage()));
                  },
                  child: ListTile(
                    title: Text(
                      'Manufacturer',
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: Icon(Icons.precision_manufacturing_sharp,
                        color: Colors.white),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  color: HexColor("#CCCCCC"),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "QUICK STATS",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 0.5,
                      ),
                      InkWell(
                        onTap: () {},
                        child: ListTile(
                          title: Text(
                            'ONLINE CUSTOMERS',
                            style: TextStyle(
                                color: HexColor("#660099"),
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "Logged In:0\n New:1",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          leading: Icon(
                            Icons.person_pin_outlined,
                            color: HexColor("#474545"),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: ListTile(
                          title: Text(
                            'NEW ORDERS TODAY',
                            style: TextStyle(
                                color: HexColor("#660099"),
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "0",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          leading: Icon(
                            Icons.insert_drive_file,
                            color: HexColor("#474545"),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: ListTile(
                          title: Text(
                            'TOTAL SALES TODAY',
                            style: TextStyle(
                                color: HexColor("#660099"),
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "0",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          leading: Icon(
                            Icons.add_circle,
                            color: HexColor("#474545"),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: ListTile(
                          title: Text(
                            'NEW CUSTOMER TODAY',
                            style: TextStyle(
                                color: HexColor("#660099"),
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "0",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          leading: Icon(
                            Icons.person,
                            color: HexColor("#474545"),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: ListTile(
                          title: Text(
                            'NEW REVIEWS TODAY',
                            style: TextStyle(
                                color: HexColor("#660099"),
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "0",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          leading: Icon(
                            Icons.rate_review,
                            color: HexColor("#474545"),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: ListTile(
                          title: Text(
                            'SERVER TIME',
                            style: TextStyle(
                                color: HexColor("#660099"),
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "11/22/2020\n 11:45:15 AM",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          leading: Icon(
                            Icons.wifi_sharp,
                            color: HexColor("#474545"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //body
          ],
        ),
      ),
    );
  }
}
