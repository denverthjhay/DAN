import 'package:flutter/material.dart';

class doctorsWidget extends StatefulWidget {
  @override
  _doctorsWidgetState createState() => _doctorsWidgetState();
}

class _doctorsWidgetState extends State<doctorsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: toBuildAppBar(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/bgmaps.png",
              ),
              fit: BoxFit.fill,
              opacity: 0.3),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              Container(
                height: 50,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(6, 174, 213, 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text(
                          'Find a doctor or hospital in your area',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 120,
              ),
              searchBox(),
              const SizedBox(
                height: 50,
              ),
              address(),
              const SizedBox(
                height: 50,
              ),
              Container(
                  width: 300,
                  height: 60,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: Color.fromRGBO(6, 174, 213, 1),
                  ),
                  child: TextButton(
                    child: const Text(
                      'search for facilities',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'DM Sans',
                        fontSize: 23,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    onPressed: () => {},
                  )),
              const SizedBox(
                height: 280,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

AppBar toBuildAppBar() {
  return AppBar(
    elevation: 15,
    toolbarHeight: 70,
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    backgroundColor: Colors.white,
    centerTitle: true,
    automaticallyImplyLeading: true,
    title: const Text("Digital Aid Nurse",
        style: TextStyle(
          color: Color.fromRGBO(6, 174, 213, 1),
          fontFamily: 'DM Sans',
          fontSize: 23,
          letterSpacing: 0,
          fontWeight: FontWeight.normal,
        )),
  );
}

Widget searchBox() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    child: const TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.grey),
        ),
        contentPadding: EdgeInsets.all(10),
        prefixIcon: Icon(
          Icons.search,
          color: Color.fromRGBO(6, 174, 213, 1),
          size: 20,
        ),
        prefixIconConstraints: BoxConstraints(
          maxHeight: 30,
          minWidth: 30,
        ),
        border: InputBorder.none,
        hintText: 'Search doctors and hospitals...',
        hintStyle: TextStyle(color: Colors.grey),
      ),
    ),
  );
}

Widget address() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    child: const TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.grey),
        ),
        contentPadding: EdgeInsets.all(10),
        prefixIcon: Icon(
          Icons.add_location,
          color: Color.fromRGBO(6, 174, 213, 1),
          size: 20,
        ),
        prefixIconConstraints: BoxConstraints(
          maxHeight: 30,
          minWidth: 30,
        ),
        border: InputBorder.none,
        hintText: 'Talisay City, Cebu',
        hintStyle: TextStyle(color: Colors.grey),
      ),
    ),
  );
}
