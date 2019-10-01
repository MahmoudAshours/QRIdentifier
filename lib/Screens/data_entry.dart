import 'package:flutter/material.dart';
import 'package:qridentifier/Screens/qr_result.dart'; 
class DataEntry extends StatefulWidget {
  @override
  _DataEntryState createState() => _DataEntryState();
}

class _DataEntryState extends State<DataEntry> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController bloodTypeController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController anyInfoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffff1744),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(hintText: 'Name'),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                  child: TextField(
                    controller: ageController,
                    decoration: InputDecoration(hintText: 'age'),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: TextField(
                  controller: bloodTypeController,
                  decoration: InputDecoration(hintText: 'Blood Type'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: TextField(
                  controller: addressController,
                  decoration: InputDecoration(hintText: 'address'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: TextField(
                  controller: anyInfoController,
                  decoration: InputDecoration(hintText: 'Any added Info'),
                ),
              ),
              RaisedButton(
                  child: Text("Make your QRCODE!"),
                  color: Color(0xffc4001d),
                  onPressed: () {
                    setState(() {
                      String name;
                      String age;
                      String location;
                      String bloodType;
                      String addedInfo;
                      name = nameController.text;

                      age = ageController.text;

                      location = addressController.text;

                      bloodType = bloodTypeController.text;

                      addedInfo = anyInfoController.text;

                      var results = [
                        "name : " + name,
                        "age :" + age,
                        "address : " + location,
                        "blood type : " + bloodType,
                        "added information :" + addedInfo
                      ];
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>QrResult(result: results,)));
                    });
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)))
            ],
          ),
        ));
  }
}
