import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  final String name;
  const SigninScreen({super.key, required this.name});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final validator = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("EXCESS"))),
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.only(top: 50),
          child: Text(widget.name)),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Text(
                "Welcome to Signin Screen",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Form(
                  key: validator,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: emailController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Email";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "Enter your Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextFormField(
                          controller: passwordController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter Password";
                            }
                            return null;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Enter your password",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.amberAccent),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    if (validator.currentState!.validate()) {
                      if (emailController.text.toString() ==
                              "hippo@gmail.com" &&
                          passwordController.text.toString() == "12345") {
                        ScaffoldMessenger.of(context).showSnackBar(
                          snackBarAnimationStyle: AnimationStyle(
                            duration: Duration(seconds: 2),
                          ),
                          SnackBar(
                            content: Text(
                              "You are authenticated.",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        );
                        print("You are correct.");
                        print("Email is ${emailController.text.toString()}");
                        print("pass is ${passwordController.text.toString()}");
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          snackBarAnimationStyle: AnimationStyle(
                            duration: Duration(seconds: 2),
                          ),
                          SnackBar(
                            content: Text(
                              "You are not authenticated.",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        );

                        print("You are wrong. User Auth Failed.");
                      }
                    }
                    print("Button Pressed");
                  },
                  icon: Icon(
                    Icons.login,
                    size: 50,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
