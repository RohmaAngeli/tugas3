import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  String UserName = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Add Product'),
          ),
          body: SingleChildScrollView(
              child: Column(children: <Widget>[
            Text(
              "Product Image",
              style: TextStyle(
                fontSize: 20,
                color: Colors.purple,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              height: 210,
              child: Center(
                  child: Icon(
                Icons.add,
                size: 50,
                color: Colors.blue,
              )),
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.blue.shade50, border: Border.all(width: 2, color: Colors.blue), borderRadius: BorderRadius.circular(10)),
            ),
            Text("Product Name",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 20,
                )),
            Container(
                margin: EdgeInsets.only(bottom: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Shoes 101',
                  ),
                )),
            Text("Product ID",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 20,
                )),
            Container(
                margin: EdgeInsets.only(bottom: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'SH-101',
                  ),
                  onChanged: (text) {
                    setState(() {
                      UserName = text;
                      //you can access nameController in its scope to get
                      // the value of text entered as shown below
                      //UserName = nameController.text;
                    });
                  },
                )),
            Text("Price",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 20,
                )),
            Container(
                margin: EdgeInsets.only(bottom: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Rp. 1.000.000',
                  ),
                  onChanged: (text) {
                    setState(() {
                      UserName = text;
                      //you can access nameController in its scope to get
                      // the value of text entered as shown below
                      //UserName = nameController.text;
                    });
                  },
                )),
            Text("Stock",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 20,
                )),
            Container(
                margin: EdgeInsets.only(bottom: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '10',
                  ),
                  onChanged: (text) {
                    setState(() {
                      UserName = text;
                      //you can access nameController in its scope to get
                      // the value of text entered as shown below
                      //UserName = nameController.text;
                    });
                  },
                )),
            Text("Description",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 20,
                )),
            Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 200,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter a description',
                  ),
                  onChanged: (text) {
                    setState(() {
                      UserName = text;
                      //you can access nameController in its scope to get
                      // the value of text entered as shown below
                      //UserName = nameController.text;
                    });
                  },
                )),
            Text("Low Stock Warning",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            Text("Change Value to 0 for disable low stock warning",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                )),
            Container(
                margin: EdgeInsets.only(bottom: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '10',
                  ),
                  onChanged: (text) {
                    setState(() {
                      UserName = text;
                      //you can access nameController in its scope to get
                      // the value of text entered as shown below
                      //UserName = nameController.text;
                    });
                  },
                )),
          ]))),
    );
  }
}
