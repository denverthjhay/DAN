import 'package:flutter/material.dart';

class medicineidentifierWidget extends StatefulWidget {
  @override
  _medicineidentifierWidgetState createState() =>
      _medicineidentifierWidgetState();
}

class _medicineidentifierWidgetState extends State<medicineidentifierWidget> {
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
                height: 25,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Text(
                  'Shape',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(6, 174, 213, 1),
                      fontFamily: 'DM Sans',
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.bold,
                      height: 1),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Color',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'DM Sans',
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.bold,
                      height: 1),
                ),
              ]),
              const SizedBox(
                height: 5,
              ),
              Row(children: <Widget>[
                Expanded(
                  child: new Container(
                      child: Divider(
                    height: 20,
                    thickness: 2,
                    // indent: 20,
                    // endIndent: 0,
                    color: Color.fromRGBO(6, 174, 213, 1),
                  )),
                ),
                Expanded(
                  child: new Container(
                      child: Divider(
                    height: 20,
                    thickness: 2,
                    //indent: 20,
                    //endIndent: 20,
                    color: Colors.grey,
                  )),
                ),
              ]),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Select the shape that best matches your prescription or OTC drug ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'DM Sans',
                    fontSize: 16,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1),
              ),
              const SizedBox(
                height: 25,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: () {},
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/Ellipse101.png',
                              width: 80,
                              height: 70,
                            ),
                            const Text(
                              'Round',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'DM Sans',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.bold,
                                  height: 1),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Ellipse102.png',
                              width: 80,
                              height: 70,
                            ),
                            const Text(
                              'Oblong',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'DM Sans',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.bold,
                                  height: 1),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Ellipse103.png',
                              width: 80,
                              height: 70,
                            ),
                            const Text(
                              '3 Sided',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'DM Sans',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.bold,
                                  height: 1),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 4,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Ellipse104.png',
                              width: 80,
                              height: 70,
                            ),
                            const Text(
                              'Square',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'DM Sans',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.bold,
                                  height: 1),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Ellipse105.png',
                              width: 80,
                              height: 70,
                            ),
                            const Text(
                              'Rectangle',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'DM Sans',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.bold,
                                  height: 1),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Ellipse106.png',
                              width: 80,
                              height: 70,
                            ),
                            const Text(
                              'Diamond',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'DM Sans',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.bold,
                                  height: 1),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Ellipse107.png',
                              width: 80,
                              height: 70,
                            ),
                            const Text(
                              '5 Sided',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'DM Sans',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.bold,
                                  height: 1),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Ellipse108.png',
                              width: 80,
                              height: 70,
                            ),
                            const Text(
                              '6 Sided',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'DM Sans',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.bold,
                                  height: 1),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Ellipse109.png',
                              width: 80,
                              height: 70,
                            ),
                            const Text(
                              'Other',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'DM Sans',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.bold,
                                  height: 1),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color.fromRGBO(6, 174, 213, 1),
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    "View Results",
                    style: TextStyle(
                      fontFamily: 'DM Sans',
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
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
        hintText: 'Text or imprint on pill ',
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
    title: const Text("Medicine Identifier",
        style: TextStyle(
            color: Colors.black,
            fontFamily: 'DM Sans',
            fontSize: 23,
            letterSpacing: 0,
            fontWeight: FontWeight.normal,
            height: 1)),
  );
}
