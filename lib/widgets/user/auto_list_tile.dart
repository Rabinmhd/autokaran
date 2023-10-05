import 'package:flutter/material.dart';

class AutoListTile extends StatelessWidget {
  const AutoListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
            color: const Color.fromARGB(31, 144, 141, 141),
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 248, 248, 248),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text("KL 01 A 1010"),
                    ),
                  ),
                  const Text("Bajaj Maxima X"),
                  const Row(
                    children: [
                      CircleAvatar(),
                      SizedBox(width:10),
                      Column(
                        children: [
                          Text("John joe"),
                          Row(
                            children: [
                              Icon(Icons.star,size: 15),
                              Text("4.0"),
                              SizedBox(
                                width: 5,
                              ),
                              Text("200 ratings")
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 70,
                    child: Image.network(
                        "https://img.freepik.com/premium-vector/three-wheeler-yellow-auto-rickshaw_679005-7.jpg"),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Center(
                        child: Text(
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            "view"),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
