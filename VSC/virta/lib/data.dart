import 'package:flutter/material.dart';
import 'package:virta/home.dart';
import 'package:virta/kameracowok.dart';
import 'package:virta/kameracewek.dart';
import 'package:virta/widgets/costum_button.dart';

class Data_Screen extends StatefulWidget {
  const Data_Screen({super.key});

  @override
  State<Data_Screen> createState() => _Data_ScreenState();
}

class _Data_ScreenState extends State<Data_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 180.0,
        title: const Text(
          "Measure Me!",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              gradient: LinearGradient(
                  colors: [Colors.red, Colors.orange],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter)),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 50),
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "Nama",
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 15, left: 50)),
                const TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: " Masukkan Nama ",
                  ),
                )
              ],
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(
            top: 40,
          )),
          SizedBox(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text("Pilih Jenis Kelamin",
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start),
            ],
          )),
          const Padding(
              padding: EdgeInsets.only(
            top: 50,
          )),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  child: InkWell(
                    splashColor: Colors.black,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Camera()));
                    },
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Ink.image(
                        image: const AssetImage(
                          "assets/cowo.png",
                        ),
                        height: 140,
                        width: 140,
                      ),
                    ]),
                  ),
                ),
                SizedBox(
                  child: InkWell(
                      splashColor: Colors.black,
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Camera()));
                      },
                      child: Column(
                        children: [
                          Ink.image(
                            image: const AssetImage("assets/cewe.png"),
                            height: 140,
                            width: 140,
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
          const Spacer(),
          SizedBox(
            width: double.maxFinite,
            child: CustomButton(
                text: ' Back to Home  ',
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const home(),
                    ),
                  );
                }),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 30)),
        ],
      ),
    );
  }
}
