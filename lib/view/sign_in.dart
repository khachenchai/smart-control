import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In", style: TextStyle(fontSize: 28),),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        behavior: HitTestBehavior.opaque,
        child: Form(
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              const Text("Username", style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              )),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Username",
                  labelStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(10),
                  // ),
              )),
              const SizedBox(
                height: 32,
              ),
              const Text("Password", style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              )),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(10),
                  // ),
              )),
      
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.check, size: 32,),
      ),
    );
  }
}
