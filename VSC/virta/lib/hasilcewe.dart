import 'package:flutter/material.dart';
import 'package:virta/data.dart';
import 'package:virta/home.dart';
import 'package:virta/signup_screen.dart';
import 'package:virta/widgets/costum_button.dart';

class HasilScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => hasildata();
}

class hasildata extends State<HasilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 30),
          Container(
              padding: const EdgeInsets.symmetric(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/cewe.png',
                    width: 170,
                    height: 220,
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment(0, 0),
                          height: 35,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.orange,
                          ),
                          child: Text(
                            'nama',
                            style:
                                TextStyle(fontSize: 15, color: Colors.black38),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                          child: Text(
                            'Blazer',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 23,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment(0.2, 0.1),
                          height: 35,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.orange,
                          ),
                          child: Text(
                            'ukuran disarankan',
                            style:
                                TextStyle(fontSize: 15, color: Colors.black38),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                          child: Text(
                            'Rok',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 23,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment(0.2, 0.1),
                          height: 35,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.orange,
                          ),
                          child: Text(
                            'ukuran disarankan',
                            style:
                                TextStyle(fontSize: 15, color: Colors.black38),
                          ),
                        ),
                      ]),
                ],
              )),
          Container(
            alignment: Alignment(-1, 0.5),
            margin: EdgeInsets.only(left: 20, right: 20, top: 30),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.orange,
            ),
            child: Text(
              'Lebar bahu : ..................... cm',
              style: TextStyle(fontSize: 23, color: Colors.black),
            ),
          ),
          Container(
            alignment: Alignment(-1, 0.5),
            margin: EdgeInsets.only(left: 20, right: 20, top: 15),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.orange,
            ),
            child: Text(
              'Panjang lengan : .............. cm',
              style: TextStyle(fontSize: 23, color: Colors.black),
            ),
          ),
          Container(
            alignment: Alignment(-1, 0.5),
            margin: EdgeInsets.only(left: 20, right: 20, top: 15),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.orange,
            ),
            child: Text(
              'Lingkar dada : .................. cm',
              style: TextStyle(fontSize: 23, color: Colors.black),
            ),
          ),
          Container(
            alignment: Alignment(-1, 0.5),
            margin: EdgeInsets.only(left: 20, right: 20, top: 15),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.orange,
            ),
            child: Text(
              'Lingkar pinggang : ........... cm',
              style: TextStyle(fontSize: 23, color: Colors.black),
            ),
          ),
          Container(
            alignment: Alignment(-1, 0.5),
            margin: EdgeInsets.only(left: 20, right: 20, top: 15),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.orange,
            ),
            child: Text(
              'Lingkar pinggul : .............. cm',
              style: TextStyle(fontSize: 23, color: Colors.black),
            ),
          ),
          Container(
            alignment: Alignment(-1, 0.5),
            margin: EdgeInsets.only(left: 20, right: 20, top: 15),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.orange,
            ),
            child: Text(
              'Panjang baju : .................. cm',
              style: TextStyle(fontSize: 23, color: Colors.black),
            ),
          ),
          Container(
            alignment: Alignment(-1, 0.5),
            margin: EdgeInsets.only(left: 20, right: 20, top: 15),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.orange,
            ),
            child: Text(
              'Panjang rok : .................... cm',
              style: TextStyle(fontSize: 23, color: Colors.black),
            ),
          ),
          Spacer(),
          SizedBox(
            width: double.maxFinite,
            child: CustomButton(
                text: 'Back to Home',
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const home(),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
