import 'package:flutter/material.dart';
import 'package:smart_control/view/sign_in.dart';
import 'package:smart_control/view/sign_up.dart';

class AuthenPage extends StatefulWidget {
  const AuthenPage({Key? key}) : super(key: key);

  @override
  State<AuthenPage> createState() => _AuthenPageState();
}

class _AuthenPageState extends State<AuthenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Authen Page", style: TextStyle(fontSize: 22),),
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset('assets/img/pkw_no_bg.png', width: 200, height: 200),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Smart Control App", style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                )),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 2.5,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.lightGreen),
              ),
              child: const SizedBox(
                height: 50,
                width: double.infinity,
                child: Center(
                  child: Text("Sign In", style: TextStyle(
                    fontSize: 22,
                    // fontWeight: FontWeight.bold
                  )),
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SignInPage()));
              },
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange),
              ),
              child: const SizedBox(
                height: 50,
                width: double.infinity,
                child: Center(
                  child: Text("Sign Up", style: TextStyle(
                    fontSize: 22,
                    // fontWeight: FontWeight.bold
                  )),
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SignUpPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}