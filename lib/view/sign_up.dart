import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool pwStatus = true;
  bool cfStatus = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up", style: TextStyle(fontSize: 28),),
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
              const Text("Username :", style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              )),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "โปรดกรอกชื่อผู้ใช้ของท่าน",
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
              const Text("Password :", style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              )),
              TextFormField(
                obscureText: pwStatus,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        pwStatus = !pwStatus;
                      });
                    }, 
                    icon: pwStatus ? const Icon(Icons.remove_red_eye) : const Icon(Icons.remove_red_eye_outlined)
                  ),
                  labelText: "โปรดกรอกรหัสผ่านของท่าน",
                  labelStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                )
              ),
              const SizedBox(
                height: 32,
              ),
              const Text("Confirm password :", style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              )),
              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        pwStatus = !pwStatus;
                      });
                    }, 
                    icon: pwStatus ? const Icon(Icons.remove_red_eye) : const Icon(Icons.remove_red_eye_outlined)
                  ),
                  labelText: "Confirm password",
                  labelStyle: const TextStyle(
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
        child: const Icon(Icons.add, size: 32,),
      ),
    );
  }
}