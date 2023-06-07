import 'package:flutter/material.dart';
import 'package:virta/login_screen.dart';
import 'package:virta/signup_screen.dart';
import 'package:virta/widgets/costum_button.dart';

void main() {
  runApp(const home());
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<StatefulWidget> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Color(0xffF5591F),
              Color(0xFFCE2000),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(),
            Image.asset(
              'assets/gambar.png',
              height: 500.0,
              width: 400.0,
            ),
            Text(
              "Welcome to VIRTA",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0),
            ),
            Text(
              "measure your body for clothing everywhere here",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            Spacer(),
            SizedBox(
              width: double.maxFinite,
              child: CustomButton(
                  text: ' Log In  ',
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => new LoginScreen(),
                      ),
                    );
                  }),
            ),
            SizedBox(
              width: double.maxFinite,
              child: CustomButton(
                  text: ' Register  ',
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => new SignUpScreen(),
                      ),
                    );
                  }),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
