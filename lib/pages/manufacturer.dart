import 'package:flutter/material.dart';
import 'package:mokshya_ecommerce_admin/components/drawer.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mokshya_ecommerce_admin/components/add_manufacturer.dart';

class ManufacturePage extends StatefulWidget {
  @override
  _ManufacturePageState createState() => _ManufacturePageState();
}

class _ManufacturePageState extends State<ManufacturePage> {
  var items = <String, List>{
    'Images': ['images/logowhite.jpg'],
    'Name': ['Camera'],
    'Action': ['0']
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Manufacturer Page"),
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
                  "Manufacturer Category",
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddManufacturer()));
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Image",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: HexColor("#660099"),
                    ),
                  ),
                  Text(
                    "Name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: HexColor("#660099"),
                    ),
                  ),
                  Text(
                    "Action",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: HexColor("#660099"),
                    ),
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

class Napper extends StatelessWidget {
  var items = <String, List>{
    'Images': ['images/logowhite.jpg'],
    'Name': ['Camera'],
    'Action': ['0']
  };
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListView.builder(
          itemCount: items.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Mapper(image: items["Images"][index]);
          }),
    );
  }
}

class Mapper extends StatelessWidget {
  final image;

  Mapper({
    this.image,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black12,
        height: 200.0,
        child: Image(
          image: AssetImage(image),
        ));
  }
}
