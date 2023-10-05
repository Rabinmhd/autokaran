import 'package:autokaran/pages/admin/admin_login_page.dart';
import 'package:autokaran/pages/admin/profile_edit_page.dart';
import 'package:flutter/material.dart';

//Home page for auto driver--------

class AdminProfile extends StatelessWidget {
  const AdminProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Auto details"),
        actions: [
          Column(
            children: [
              PopupMenuButton(
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AdminProfileEdit(),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Icon(Icons.settings),
                            SizedBox(
                              width: 2,
                            ),
                            Text("Settings")
                          ],
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AdminLoginPage(),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Icon(Icons.logout),
                            SizedBox(
                              width: 2,
                            ),
                            Text("Logout")
                          ],
                        ),
                      ),
                    )
                  ];
                },
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(radius: 60),
              const SizedBox(
                height: 10,
              ),
              const Text("Driver Name", style: TextStyle(fontSize: 25)),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 80,
                child: Image.network(
                    "https://img.freepik.com/premium-vector/three-wheeler-yellow-auto-rickshaw_679005-7.jpg"),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Auto type",
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "KL 57 M 2012",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: 150,
                  child: const TextField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText: "About yourself",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("3k+",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25)),
                        Text("Total rides",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black45)),
                      ],
                    ),
                    Column(
                      children: [
                        Text("4.0",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25)),
                        Text("Rating",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black45)),
                      ],
                    ),
                    Column(
                      children: [
                        Text("2.5",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25)),
                        Text("Years",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black45)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
