import 'package:flutter/material.dart';
import 'package:myfirstapplication/main.dart';
import 'package:myfirstapplication/newpage.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

var nameController = TextEditingController();
var emailController = TextEditingController();
var passwordController = TextEditingController();
var confirmController = TextEditingController();
var formKey = GlobalKey<FormState>();
bool showpassword = true;



class _page1State extends State<page1> {
  void showicon() {
    setState(() {
      showpassword = !showpassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        body: Center(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const Text(
                  "Sign Up",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("Create your accuount"),
                TextFormField(
                    controller: nameController,
                    validator: (value) {
                      if (value != null) {
                        return ("invalid");
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: "user name",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        fillColor: Colors.purple[50],
                        filled: true)),
                const SizedBox(
                  width: 10,
                  height: 20,
                ),
                TextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (value != null) {
                      return ("invalid");
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Icon(Icons.mail),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      fillColor: Colors.purple[50],
                      filled: true),
                ),
                const SizedBox(
                  width: 10,
                  height: 20,
                ),
                TextFormField(
                  controller: passwordController,
                  validator: (value) {
                    if (value != null) {
                      return ("invalid");
                    }
                    return null;
                  },
                  obscureText: showpassword,
                  decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: const Icon(Icons.password),
                      suffixIcon: IconButton(
                          onPressed: () {
                            showicon();
                          },
                          icon: showpassword
                              ? Icon(Icons.remove_red_eye)
                              : Icon(Icons.remove_red_eye_outlined)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      fillColor: Colors.purple[50],
                      filled: true),
                ),
                const SizedBox(
                  width: 10,
                  height: 20,
                ),
                TextFormField(
                  controller: confirmController,
                  validator: (value) {
                    if (value != null) {
                      return ("invalid");
                    }
                    return null;
                  },
                  obscureText: showpassword,
                  decoration: InputDecoration(
                      labelText: " confirm password",
                      prefixIcon: Icon(Icons.password),
                                            suffixIcon: IconButton(
                          onPressed: () {
                            showicon();
                          },
                          icon: showpassword
                              ? Icon(Icons.remove_red_eye)
                              : Icon(Icons.remove_red_eye_outlined)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      fillColor: Colors.purple[50],
                      filled: true),
                ),
                const SizedBox(
                  width: 10,
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size.fromWidth(450),
                        backgroundColor: Colors.purple[500]),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        print(nameController.text);
                      }
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white),
                    )),
                const SizedBox(
                  width: 10,
                  height: 20,
                ),
                Text("or"),
                const SizedBox(
                  width: 10,
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size.fromWidth(450),
                        side: BorderSide(color: Colors.purple)),
                    onPressed: () {},
                    child: Text("sign in with google")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context,
                              MaterialPageRoute(builder: (context) => Myapp()));
                        },
                        child: Text("sign in")),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Newpage()));
                        },
                        child: Text("next"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
