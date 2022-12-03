import 'package:flutter/material.dart';

class forumsWidget extends StatefulWidget {
  @override
  _forumsWidgetState createState() => _forumsWidgetState();
}

class _forumsWidgetState extends State<forumsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: toBuildAppBar(),
      body: Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                height: 150.0,
                width: 320.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Rectangle114.png'),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.only(
                      topRight: const Radius.circular(10.0),
                      topLeft: const Radius.circular(10.0)),
                ),
              ),
              Container(
                  height: 140.0,
                  width: 320.0,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(215, 232, 236, 1),
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.only(
                        bottomLeft: const Radius.circular(10.0),
                        bottomRight: const Radius.circular(10.0)),
                  ),
                  child: Column(children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(
                              color: Color.fromRGBO(6, 174, 213, 1),
                              fontFamily: 'DM Sans',
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          child:
                              const Text('COVID-19: Rebuilding for Resilience'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => forumsWidget()),
                            );
                          },
                        )),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: TextSpan(
                          text:
                              'Two years into the COVID-19 pandemic, we’ve learned a lot about resilience: what makes us stronger, safer and more adaptable and what doesn’t. Now, we need to foc..',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'DM Sans',
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                          children: const <TextSpan>[
                            TextSpan(
                                text: ' Read More',
                                style: TextStyle(
                                  color: Color.fromRGBO(6, 174, 213, 1),
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                      thickness: 0.08, //thicknes
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/images/someone.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                  ]))
            ]),
          )),
    );
  }
}

AppBar toBuildAppBar() {
  return AppBar(
    leading: BackButton(color: Colors.black),
    backgroundColor: Colors.white,
    automaticallyImplyLeading: true,
    title: const Text("Forums",
        style: TextStyle(
            color: Colors.black,
            fontFamily: 'DM Sans',
            fontSize: 23,
            letterSpacing: 0,
            fontWeight: FontWeight.normal,
            height: 1)),
  );
}
