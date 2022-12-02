import 'package:flutter/material.dart';

class symptomscheckerWidget extends StatefulWidget {
  @override
  _symptomscheckerWidgetState createState() => _symptomscheckerWidgetState();
}

class _symptomscheckerWidgetState extends State<symptomscheckerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: toBuildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              searchBox(),
              const SizedBox(
                height: 250,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Use the search field above to check for current symptoms you are having',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'DM Sans',
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget searchBox() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
      color: Color.fromARGB(235, 235, 235, 235),
      borderRadius: BorderRadius.circular(20),
    ),
    child: TextField(
      // onChanged: (value) => searchYourToDo(value),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.grey),
        ),
        contentPadding: EdgeInsets.all(10),
        prefixIcon: Icon(
          Icons.search,
          color: Colors.grey,
          size: 20,
        ),
        prefixIconConstraints: BoxConstraints(
          maxHeight: 30,
          minWidth: 30,
        ),
        border: InputBorder.none,
        hintText: 'Search conditions drugs...',
        hintStyle: TextStyle(color: Colors.grey),
      ),
    ),
  );
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
    title: const Text("Check Symptoms",
        style: TextStyle(
            color: Colors.black,
            fontFamily: 'DM Sans',
            fontSize: 23,
            letterSpacing: 0,
            fontWeight: FontWeight.normal,
            height: 1)),
  );
}
