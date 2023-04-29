import 'package:flutter/material.dart';
import 'package:flutter_task2/login3.dart';
import 'package:percent_indicator/percent_indicator.dart';
import './login1.dart';

class Login2 extends StatefulWidget {
  late String first, last, email, gender, phone;
  Login2(
      {super.key,
      required this.email,
      required this.first,
      required this.gender,
      required this.last,
      required this.phone});

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  final _formkey = GlobalKey<FormState>();
  late String first, last, email, gender, phone;
  late String AddressLine1, AddressLine2, city, state, country, zip;
  String? _states;
  String? _city;
  @override
  void initState() {
    super.initState();
    email = widget.email;
    first = widget.first;
    last = widget.last;
    gender = widget.gender;
    phone = widget.phone;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Address Details',
          style: TextStyle(color: Colors.black),
        ),
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
        child: Column(
          children: [
            Container(
              color: Colors.grey.shade300,
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: LinearPercentIndicator(
                  barRadius: Radius.circular(10),
                  lineHeight: 10,
                  percent: 1,
                  progressColor: Colors.deepPurple,
                ),
              ),
            ),
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Address Line 1'),
                          Text(
                            '*',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'please enter your AdressLine 1';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          AddressLine1 = value!;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          isDense: true,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text('Adress Line2'),
                          Text(
                            '*',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your Adress Line 2';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          AddressLine2 = value!;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          isDense: true,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text('State'),
                          Text(
                            '*',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            DropdownButtonFormField<String>(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                isDense: true,
                              ),
                              value: _states,
                              items: ['Telangana', 'Andhra Pradesh', 'Banglore']
                                  .map((state) => DropdownMenuItem<String>(
                                        value: state,
                                        child: Text(state),
                                      ))
                                  .toList(),
                              validator: (value) {
                                if (value == null) {
                                  return 'Please select your state';
                                }
                                return null;
                              },
                              onChanged: (value) {
                                setState(() {
                                  state = value!;
                                });
                              },
                              onSaved: (value) {
                                state = value!;
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text('city'),
                          Text(
                            '*',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            DropdownButtonFormField<String>(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                isDense: true,
                              ),
                              value: _city,
                              items: ['Hyderabad', 'Nalgonda', 'KR puram']
                                  .map((citys) => DropdownMenuItem<String>(
                                        value: citys,
                                        child: Text(citys),
                                      ))
                                  .toList(),
                              onChanged: (value) {
                                setState(() {
                                  city = value!;
                                });
                              },
                              validator: (value) {
                                if (value == null) {
                                  return 'Please select your city';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                city = value!;
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text('country'),
                          Text(
                            '*',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'please enter your country';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          country = value!;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text('Zip Code'),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onSaved: (value) {
                          zip = value!;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          isDense: true,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomAppBar(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 350,
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          _formkey.currentState!.save();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Login3(
                                    email: email,
                                    first: first,
                                    last: last,
                                    gender: gender,
                                    phone: phone,
                                    AddressLine1: AddressLine1,
                                    AddressLine2: AddressLine2,
                                    city: city,
                                    state: state,
                                    country: country,
                                    zip: zip)),
                          );
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 12, 3, 43)),
                      ),
                      child: Text("Submit")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
