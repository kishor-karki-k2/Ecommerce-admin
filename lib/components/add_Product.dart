
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:custom_switch/custom_switch.dart';

class AddProducts extends StatefulWidget {
  @override
  _AddProductsState createState() => _AddProductsState();
}

class _AddProductsState extends State<AddProducts> {
  bool isSwitchedStatus = false;
  bool isSwitchedFeature = false;

  final String="00";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Products"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.05,
            color: HexColor("#E5FAFB"),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "INSERT",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {},
            child: Icon(Icons.arrow_back_rounded),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.05,
            color: HexColor("#E5FAFB"),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "General",
                style: TextStyle(color: HexColor("#660099"), fontSize: 15),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                //height: MediaQuery.of(context).size.height*0.695,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("ID:",style: TextStyle(fontWeight: FontWeight.bold),),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  margin: new EdgeInsets.symmetric(horizontal: 50.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black87),
                                  ),
                                  width: MediaQuery.of(context).size.width*0.3,
                                  height: 30,
                                  child: TextField(
                                    decoration: new InputDecoration(
                                      contentPadding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                                      hintText: "ID",
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color:Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Image:",style: TextStyle(fontWeight: FontWeight.bold),),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  margin: new EdgeInsets.symmetric(horizontal: 30.0),
                                  width: MediaQuery.of(context).size.width*0.3,
                                  height: 30,
                                  alignment: Alignment.bottomLeft,
                                  child: Icon(
                                    Icons.add_circle,color: HexColor("#660099"),size: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color:Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Status:",style: TextStyle(fontWeight: FontWeight.bold),),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  margin: new EdgeInsets.symmetric(horizontal: 20.0),
                                  width: 70,
                                  height: 30,
                                  child:CustomSwitch(
                                    value: isSwitchedStatus,
                                    activeColor: HexColor("#660099"),
                                    onChanged: (value){
                                      print("VALUE:$value");
                                      setState(() {
                                        isSwitchedStatus=value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Featurd Product:",style: TextStyle(fontWeight: FontWeight.bold),),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  margin: new EdgeInsets.symmetric(horizontal: 20.0),
                                  width: 70,
                                  height: 30,
                                  child:CustomSwitch(
                                    value: isSwitchedFeature,
                                    activeColor: HexColor("#660099"),
                                    onChanged: (value){
                                      print("VALUE:$value");
                                      setState(() {
                                        isSwitchedFeature=value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color:Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Products Name:",style: TextStyle(fontWeight: FontWeight.bold),),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  margin: new EdgeInsets.symmetric(horizontal: 10.0),
                                  width: MediaQuery.of(context).size.width*0.35,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black87),
                                  ),
                                  child: TextField(
                                    decoration: new InputDecoration(
                                      contentPadding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                                      hintText: "Products Name",
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color:Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Description:",style: TextStyle(fontWeight: FontWeight.bold),),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  margin: new EdgeInsets.symmetric(horizontal: 35.0),
                                  width: MediaQuery.of(context).size.width*0.5,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black87),
                                  ),
                                  child: TextField(
                                    keyboardType: TextInputType.multiline,
                                    minLines: 1,//Normal textInputField will be displayed
                                    maxLines: 5,// when user presses enter it will adapt to it

                                    decoration: new InputDecoration(
                                      contentPadding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                                      hintText: "Add Description....",
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color:Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Categories:",style: TextStyle(fontWeight: FontWeight.bold),),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  margin: new EdgeInsets.symmetric(horizontal: 40.0),
                                  width: MediaQuery.of(context).size.width*0.35,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black87),
                                  ),
                                  child: DropdownButton(
                                    hint: Text("Select Catogory"),
                                    items: [],
                                    icon: Icon(Icons.arrow_drop_down,color: Colors.black87,size: 20,),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color:Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Manufacturer:",style: TextStyle(fontWeight: FontWeight.bold),),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  margin: new EdgeInsets.symmetric(horizontal: 25.0),
                                  width: MediaQuery.of(context).size.width*0.45,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black87),
                                  ),
                                  child: DropdownButton(
                                    hint: Text("Select Manufacturer"),
                                    items: [],
                                    icon: Icon(Icons.arrow_drop_down,color: Colors.black87,size: 20,),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color:Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Model:",style: TextStyle(fontWeight: FontWeight.bold),),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  margin: new EdgeInsets.symmetric(horizontal: 70.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black87),
                                  ),
                                  width: MediaQuery.of(context).size.width*0.3,
                                  height: 30,
                                  child: TextField(
                                    decoration: new InputDecoration(
                                      contentPadding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                                      hintText: "Model",
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color:Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Cost Price:",style: TextStyle(fontWeight: FontWeight.bold),),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  margin: new EdgeInsets.symmetric(horizontal: 45.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black87),
                                  ),
                                  width: MediaQuery.of(context).size.width*0.3,
                                  height: 30,
                                  child: TextField(
                                    decoration: new InputDecoration(
                                      contentPadding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                                      hintText: 'Rs',
                                      suffixText: '${String}',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color:Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Market Price:",style: TextStyle(fontWeight: FontWeight.bold),),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  margin: new EdgeInsets.symmetric(horizontal: 30.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black87),
                                  ),
                                  width: MediaQuery.of(context).size.width*0.3,
                                  height: 30,
                                  child: TextField(
                                    decoration: new InputDecoration(
                                      contentPadding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                                      hintText: "Rs.",
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color:Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Quantity:",style: TextStyle(fontWeight: FontWeight.bold),),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  margin: new EdgeInsets.symmetric(horizontal: 60.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black87),
                                  ),
                                  width: MediaQuery.of(context).size.width*0.3,
                                  height: 30,
                                  child: TextField(
                                    decoration: new InputDecoration(
                                      contentPadding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                                      hintText: "",
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color:Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Date:",style: TextStyle(fontWeight: FontWeight.bold),),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  margin: new EdgeInsets.symmetric(horizontal: 85.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black87),
                                  ),
                                  width: MediaQuery.of(context).size.width*0.3,
                                  height: 30,
                                  child: TextField(
                                    decoration: new InputDecoration(
                                      contentPadding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                                      hintText: "yyyy/mm/dd",
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color:Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Product Delivery:",style: TextStyle(fontWeight: FontWeight.bold),),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  margin: new EdgeInsets.symmetric(horizontal: 10.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black87),
                                  ),
                                  width: MediaQuery.of(context).size.width*0.5 ,
                                  height: 30,
                                  child:  DropdownButton(
                                    hint: Text("Select Delivery Method"),
                                    items: [],
                                    icon: Icon(Icons.arrow_drop_down,color: Colors.black87,size: 20,),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color:Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Delivery Charge:",style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Within Ringroad:",style: TextStyle(fontWeight: FontWeight.bold),),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  margin: new EdgeInsets.symmetric(horizontal: 15.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black87),
                                  ),
                                  width: MediaQuery.of(context).size.width*0.3 ,
                                  height: 30,
                                  child: TextField(
                                    decoration: new InputDecoration(
                                      contentPadding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 2.0),
                                      hintText: "Rs",
                                      suffixText: '${String}',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Outside Ringroad:",style: TextStyle(fontWeight: FontWeight.bold),),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  margin: new EdgeInsets.symmetric(horizontal: 8.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black87),
                                  ),
                                  width: MediaQuery.of(context).size.width*0.3 ,
                                  height: 30,
                                  child: TextField(
                                    decoration: new InputDecoration(
                                      contentPadding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                                      hintText: "Rs",
                                      suffixText: '${String}',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: RaisedButton(
                                  color: HexColor("#660099"),
                                  onPressed: () {  },
                                  child: Row(
                                    children: [
                                      Icon(Icons.save,color: Colors.white,),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("Save",style: TextStyle(color: Colors.white),),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                child: RaisedButton(
                                  color: HexColor("#660099"),
                                  onPressed: () {  },
                                  child: Row(
                                    children: [
                                      Icon(Icons.cancel,color: Colors.white,),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("Cancel",style: TextStyle(color: Colors.white),),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
