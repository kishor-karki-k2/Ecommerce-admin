import 'package:flutter/material.dart';

class Overview extends StatelessWidget {
  static const Color border_color = Color(0xff0360BC);
  static const Color txtcolor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.45,
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
                      "Overview ",
                      style: headingTextStyle(),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Sales", style: subheadingTextStyle()),
                      Text("0"),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Annual Sale", style: subheadingTextStyle()),
                      Text("1"),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Order", style: subheadingTextStyle()),
                      Text("1"),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("No.of Customers", style: subheadingTextStyle()),
                      Text("0"),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Customer Weighting Approval",
                          style: subheadingTextStyle()),
                      Text("0"),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("No Of Products", style: subheadingTextStyle()),
                      Text("0"),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("No of Reviews", style: subheadingTextStyle()),
                      Text("0"),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Reviews Waiting Approval",
                          style: subheadingTextStyle()),
                      Text("1"),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Customer Weighting Approval",
                          style: subheadingTextStyle()),
                      Text("0"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

BoxDecoration containerBoxDecoration() {
  return BoxDecoration(
    color: Colors.white,
    boxShadow: <BoxShadow>[
      BoxShadow(color: Colors.black54, blurRadius: 20.0, offset: Offset(5, 0.5))
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
