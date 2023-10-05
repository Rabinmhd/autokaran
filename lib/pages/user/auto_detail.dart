import 'package:flutter/material.dart';

class AutoDetail extends StatelessWidget {
  const AutoDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text("Auto details"),
        
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15,bottom: 20),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Meet your driver",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
         
            const CircleAvatar(radius: 60),
            
            const Text("Driver Name", style: TextStyle(fontSize: 25)),
            SizedBox(
              height: 80,
              child: Image.network(
                  "https://img.freepik.com/premium-vector/three-wheeler-yellow-auto-rickshaw_679005-7.jpg"),
            ),
            const Text(
              "Auto type",
              style: TextStyle(fontSize: 25),
            ),
            const Text(
              "KL 57 M 2012",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 30, right: 30, ),
              child: Text(
                'Safety first - always confirm the license plate and your driver before get in',
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
            Text("Around 2KM"),
            Padding(
              padding: const EdgeInsets.only(
                  left: 25, right: 25, ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("3k+",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
                      Text("Total rides",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black45)),
                    ],
                  ),
                  Column(
                    children: [
                      Text("4.0",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
                      Text("Rating",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black45)),
                    ],
                  ),
                  Column(
                    children: [
                      Text("2.5",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
                      Text("Years",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black45)),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    height: 50,
                    width: 140,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.favorite),SizedBox(width: 10,), Text("Add to fav")],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                    height: 50,
                    width: 140,
                    child: Center(child: Text("Call",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                    ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    
      
    );

  }
}
