import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mokshya_ecommerce_admin/components/dash_chart.dart';
import 'package:mokshya_ecommerce_admin/components/dash_overview.dart';
import 'package:mokshya_ecommerce_admin/components/drawer.dart';

const Color border_color = Color(0xff0360BC);
const Color txtcolor = Colors.white;

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Admin Section"),
          ),
          actions: [
            new IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        drawer: DrawerCode(),
        body: Container(
          color: HexColor("#E5FAFB"),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: containerBoxDecoration(),
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        color: border_color,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Latest 10 Orders",
                                style: headingTextStyle(),
                              ),
                              Text(
                                "All Orders",
                                style: headingTextStyle(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Order Id", style: subheadingTextStyle()),
                            Text("Customer Name", style: subheadingTextStyle()),
                            Text("Status", style: subheadingTextStyle()),
                            Text("Total", style: subheadingTextStyle()),
                            Text("Action", style: subheadingTextStyle()),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Center(child: Text("No Data Found")),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: containerBoxDecoration(),
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        color: border_color,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  Icon(
                                    Icons.copyright,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    "Last Registaration",
                                    style: headingTextStyle(),
                                  )
                                ],
                              ),
                              Text(
                                "All Customers",
                                style: headingTextStyle(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Customer Name", style: subheadingTextStyle()),
                            Text("Email", style: subheadingTextStyle()),
                            Text("Action", style: subheadingTextStyle()),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 5.0, right: 10.0, top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Mokshya Tech",
                            ),
                            Text(
                              "mokshyaTech@Gmail.com",
                            ),
                            Text(
                              "",
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
              //overview datas are called through methods
              Overview(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.40,
                  decoration: containerBoxDecoration(),
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        color: border_color,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  Icon(
                                    Icons.trending_up_sharp,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    "Statistics",
                                    style: headingTextStyle(),
                                  )
                                ],
                              ),
                              Text(
                                "Select Range",
                                style: headingTextStyle(),
                              ),
                              Container(
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: DropdownButton<String>(
                                    iconDisabledColor: Colors.white,
                                    hint: Text("Today"),
                                    icon: Icon(Icons.arrow_drop_down),
                                    items: <String>[
                                      'Today',
                                      'Yesterday',
                                      'C',
                                      'D'
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (_) {},
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      //calling DashChart class
                      DashChart(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration containerBoxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      boxShadow: <BoxShadow>[
        BoxShadow(
            color: Colors.black54, blurRadius: 20.0, offset: Offset(5, 0.5))
      ],
    );
  }

//container heading style
  headingTextStyle() {
    return TextStyle(
        fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white);
  }

  //sub header style
  subheadingTextStyle() {
    return TextStyle(
        fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black);
  }
}
