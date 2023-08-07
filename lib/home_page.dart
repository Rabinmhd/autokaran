import 'package:flutter/material.dart';

import 'auto_detail.dart';

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  ValueNotifier<int> screenIndex = ValueNotifier(0);
  List screen = [
    SafeArea(
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return InkWell(onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const AutoDetail(),)),
                    child:  ListTile(
                      leading: Text("Auto ${index+1}"),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const Divider(),
                itemCount: 20),
          )
        ],
      ),
    ),
    SafeArea(
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return InkWell(onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const AutoDetail(),)),
                    child:  ListTile(
                      leading: Text("Auto ${index+1}"),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const Divider(),
                itemCount: 20),
          )
        ],
      ),
    ),
    SafeArea(
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return InkWell(onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const AutoDetail(),)),
                    child:  ListTile(
                      leading: Text("Auto ${index+1}"),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const Divider(),
                itemCount: 20),
          )
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: screenIndex,
        builder: (context, value, _) {
          return Scaffold(
            appBar: AppBar(backgroundColor: Colors.white,title:  Row(
              children: [Image.network(scale: 10,
              "https://img.freepik.com/premium-vector/three-wheeler-yellow-auto-rickshaw_679005-7.jpg"),SizedBox(width: 10,),
                Text("Autokaran"),
              ],
            )),
            body: screen[screenIndex.value],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: value,
                onTap: (value) {
                  screenIndex.value = value;
                },
                items:  [
                  BottomNavigationBarItem(
                    label: "Nearest",
                    icon: Image.network(scale: 20,"https://media.istockphoto.com/id/1305166632/vector/tuk-tuk-transportation-glyph-icon.jpg?s=612x612&w=0&k=20&c=IODVSOn6KcQGn0HRhdzLHC6nks2CAPt2TwbbMPiRtmc="),
                  ),
                  BottomNavigationBarItem(
                    label: "recent",
                    icon: Image.network(scale: 20,"https://media.istockphoto.com/id/1305166632/vector/tuk-tuk-transportation-glyph-icon.jpg?s=612x612&w=0&k=20&c=IODVSOn6KcQGn0HRhdzLHC6nks2CAPt2TwbbMPiRtmc="),
                  ),
                  BottomNavigationBarItem(
                    label: "fav",
                    icon: Image.network(scale: 20,"https://media.istockphoto.com/id/1305166632/vector/tuk-tuk-transportation-glyph-icon.jpg?s=612x612&w=0&k=20&c=IODVSOn6KcQGn0HRhdzLHC6nks2CAPt2TwbbMPiRtmc="),
                  ),
                ]),
          );
        });
  }
}
