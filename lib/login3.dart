import 'package:flutter/material.dart';
import './login1.dart';
import './login2.dart';

class Login3 extends StatefulWidget {
  String first, last, email, gender, phone;
  String AddressLine1, AddressLine2, city, state, country, zip;
  Login3({
    required this.email,
    required this.first,
    required this.last,
    required this.gender,
    required this.phone,
    required this.AddressLine1,
    required this.AddressLine2,
    required this.city,
    required this.state,
    required this.country,
    required this.zip,
  });

  @override
  State<Login3> createState() => _Login3State();
}

class _Login3State extends State<Login3> {
  bool isVisible = true;
  bool isVisibleOne = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(50),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Visibility(
                visible: isVisible,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30),
                  child: Container(
                    width: 350,
                    height: 330,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black38,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'General Details',
                            style: TextStyle(
                                color: Colors.deepOrange, fontSize: 20),
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'First Name',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'Last Name',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('${widget.first}'),
                            Text('${widget.last}'),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Gender',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'Phone Number',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('${widget.gender}'),
                            Text('${widget.phone}'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 60),
                          child: Row(
                            children: [
                              Text(
                                'Email Address',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 60),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('${widget.email}'),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                        IntrinsicHeight(
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.edit,
                                        color: Colors.green,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      GestureDetector(
                                        child: Text('Edit'),
                                        onTap: () {
                                          Navigator.popUntil(
                                            context,
                                            ModalRoute.withName('/'),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                VerticalDivider(
                                  thickness: 1,
                                  color: Colors.black,
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      GestureDetector(
                                        child: Text('delete'),
                                        onTap: () {
                                          setState(() {
                                            isVisible = false;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: isVisibleOne,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30),
                  child: Container(
                    width: 350,
                    height: 350,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black38,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Address Details',
                            style: TextStyle(
                                color: Colors.deepOrange, fontSize: 20),
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Address Line 1',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'Address Line 2',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('${widget.AddressLine1}'),
                            Text('${widget.AddressLine2}'),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'state',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'city',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('${widget.state}'),
                            Text('${widget.city}'),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'country',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'Zip code ',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('${widget.country}'),
                            Text('${widget.zip}'),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                        IntrinsicHeight(
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.edit,
                                        color: Colors.green,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      GestureDetector(
                                        child: Text('Edit'),
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                VerticalDivider(
                                  thickness: 1,
                                  color: Colors.black,
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      GestureDetector(
                                        child: Text('delete'),
                                        onTap: () {
                                          setState(() {
                                            isVisibleOne = false;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
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
