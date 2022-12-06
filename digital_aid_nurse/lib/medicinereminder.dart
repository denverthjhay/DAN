import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class medicinereminderWidget extends StatefulWidget {
  @override
  _medicinereminderWidgetState createState() => _medicinereminderWidgetState();
}

class _medicinereminderWidgetState extends State<medicinereminderWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: toBuildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(children: [
            Center(
              child: DottedBorder(
                color: Colors.grey, //color of dotted/dash line
                strokeWidth: 2, //thickness of dash/dots
                dashPattern: [10, 8],
                //dash patterns, 10 is dash width, 6 is space width
                child: Container(
                  //inner container
                  height: 90, //height of inner container
                  width: double
                      .infinity, //width to 100% match to parent container.
                  color: Colors.white, //background color of inner container
                  child: Row(children: [
                    const SizedBox(
                      width: 50,
                    ),
                    Container(
                      height: 40,
                      width: 80,
                      decoration: ShapeDecoration(
                        shape: CircleBorder(),
                        color: Color.fromRGBO(255, 217, 59, 1),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: Color.fromRGBO(6, 174, 213, 1),
                        ),
                      ),
                    ),
                    Text("Add Reminder",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'DM Sans',
                            fontSize: 16,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1))
                  ]),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

AppBar toBuildAppBar() {
  return AppBar(
    elevation: 15,
    toolbarHeight: 70,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    backgroundColor: Color.fromRGBO(255, 255, 255, 1),
    centerTitle: false,
    automaticallyImplyLeading: true,
    title: const Text("Medicine Reminder",
        style: TextStyle(
            color: Colors.black,
            fontFamily: 'DM Sans',
            fontSize: 23,
            letterSpacing: 0,
            fontWeight: FontWeight.normal,
            height: 1)),
  );
}
