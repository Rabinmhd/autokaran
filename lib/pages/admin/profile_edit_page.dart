import 'dart:io';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import 'package:image_picker/image_picker.dart';

class AdminProfileEdit extends StatefulWidget {
  const AdminProfileEdit({super.key});

  @override
  State<AdminProfileEdit> createState() => _AdminProfileEditState();
}

class _AdminProfileEditState extends State<AdminProfileEdit> {
  File? imagePicked;
  String selectedValue = "Select One";
  late String lat;
  late String long;
  final List<String> items = [
    "Bajaj Maxima",
    "Electric Auto Rickshaw",
    "bajaj electric",
    "piaggio ape"
  ];
  Future<void> _pickImageFromGallery() async {
    var pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        imagePicked = File(pickedImage.path);
      });
    }
  }

  Future<void> _pickImageFromCamera() async {
    var pickedImage = await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedImage != null) {
      setState(() {
        imagePicked = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    // _pickImageFromGallery();
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      _pickImageFromCamera();
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.black26,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: const Center(
                                        child: Text("camera"),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      _pickImageFromGallery();
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.black26,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: const Center(
                                        child: Text("Gallery"),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        );
                      },
                    );
                  },
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage:
                        imagePicked != null ? FileImage(imagePicked!) : null,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[200],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Full name',
                          border: InputBorder.none,
                          icon: Icon(Icons.person),
                        ),
                        style: TextStyle(fontSize: 16.0, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[200],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: MaterialButton(
                        onPressed: () {
                          //location
                          _getCurrentLocation(context).then(
                            (value) {
                              lat = value.latitude.toString();
                              long = value.latitude.toString();
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(content: Text(lat)));
                            },
                          );
                        },
                        child: Icon(Icons.location_on),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[200],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: DropdownButton(
                        hint: Text(selectedValue),
                        items: items.map(
                          (String item) {
                            return DropdownMenuItem<String>(
                              value: item,
                              child: Text(item),
                            );
                          },
                        ).toList(),
                        onChanged: (value) {
                          setState(() {
                            if (value != null) {
                              selectedValue = value;
                            }
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[200],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Vehicle number',
                          border: InputBorder.none,
                          icon: Icon(Icons.numbers),
                        ),
                        style: TextStyle(fontSize: 16.0, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      color: Colors.black12,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Update"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    MaterialButton(
                      color: Colors.black12,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Cancel"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void _showAlertDialog(BuildContext context, String title) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the AlertDialog
            },
            child: Text('dismiss'),
          ),
        ],
      );
    },
  );
}

Future<Position> _getCurrentLocation(BuildContext context) async {
  bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    _showAlertDialog(context, "Location service disabled");
    throw Exception("Location service are disbled");
  }
  LocationPermission permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      throw Exception("location permission denied");
    }
  }
  if (permission == LocationPermission.deniedForever) {
    throw Exception("location permission disabled");
  }
  return await Geolocator.getCurrentPosition();
}
